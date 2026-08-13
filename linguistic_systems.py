# linguistic_systems.py
"""
Linguistic Systems: parser + CF engine + visualization
Author: Generated module for fence example
Requirements: networkx, matplotlib, numpy
Install: pip install networkx matplotlib numpy
"""

from dataclasses import dataclass, field
from typing import List, Tuple, Dict, Any, Optional
import itertools
import math
import random

# Visualization imports
import networkx as nx
import matplotlib.pyplot as plt
import numpy as np

# ---------------------------
# Data structures / primitives
# ---------------------------

@dataclass
class Qualifier:
    """A graded qualifier encoded as (a, b) then converted to scalar cf."""
    a: float  # significance in [-100,100] (optional)
    b: float  # belief in [-1,1]

    def scalar(self) -> float:
        """Convert (a,b) to scalar cf in [ -1, 1 ] via rescaling a -> [0,1]."""
        alpha = (self.a + 100.0) / 200.0  # maps -100..100 -> 0..1
        return alpha * self.b

@dataclass
class Node:
    """Represents an acquired property or object state with alternative CFs."""
    id: str
    label: str
    cf_alternatives: List[float] = field(default_factory=list)

@dataclass
class Edge:
    """Represents a causal rule from src -> dst with rule certainty r in [0,1]."""
    src: str
    dst: str
    rule_cf: float = 1.0
    label: Optional[str] = None

@dataclass
class SemanticNetwork:
    nodes: Dict[str, Node] = field(default_factory=dict)
    edges: List[Edge] = field(default_factory=list)

    def add_node(self, node: Node):
        self.nodes[node.id] = node

    def add_edge(self, edge: Edge):
        self.edges.append(edge)

    def get_outgoing(self, node_id: str) -> List[Edge]:
        return [e for e in self.edges if e.src == node_id]

    def get_incoming(self, node_id: str) -> List[Edge]:
        return [e for e in self.edges if e.dst == node_id]

# ---------------------------
# Simple rule-based parser
# ---------------------------

def simple_parse_story(story: str) -> List[Tuple[str,str,str,Dict[str,str]]]:
    """
    Very small rule-based parser that extracts simple triples and qualifiers.
    Returns list of (subject, predicate, object, qualifiers_dict).
    This is intentionally conservative: it looks for patterns used in the fence example.
    """
    triples = []
    s = story.lower()

    # Hard-coded patterns for the fence example
    if "householder" in s or "householder" in story:
        # 1. Householder inspected fence -> wants to paint
        if "inspected" in s and "fence" in s:
            triples.append(("householder", "inspected", "fence", {}))
            triples.append(("householder", "wants_to", "paint_fence", {"motivation":"enhance_visual_appearance"}))
        # 2. Householder obtained paint from store
        if "obtained" in s and "paint" in s:
            # find 'from' phrase
            src = "store" if "store" in s else "unknown_source"
            triples.append(("householder", "obtained_from", "paint", {"source":src}))
        # 3. Householder prepared brush for painting
        if "prepared" in s and "brush" in s:
            triples.append(("householder", "prepared", "brush", {"purpose":"painting"}))
        # 4. Householder painted fence by hand
        if "painted" in s and "fence" in s:
            method = "by_hand" if "by hand" in s or "byhand" in s else "unknown_method"
            triples.append(("householder", "painted", "fence", {"method":method}))
    # Generic fallback: split sentences and try to extract subject verb object by simple heuristics
    if not triples:
        for sent in [x.strip() for x in story.split('.') if x.strip()]:
            words = sent.split()
            if len(words) >= 3:
                subj = words[0]
                pred = words[1]
                obj = words[2]
                triples.append((subj, pred, obj, {}))
    return triples

# ---------------------------
# CF engine
# ---------------------------

def combine_rule_cf(rule_cf: float, antecedent_cfs: List[float]) -> float:
    """
    Combine a rule certainty with antecedent CFs using:
      cf_consequent = rule_cf * min(antecedent_cfs)
    This follows the min-then-multiply approach described in the document.
    """
    if not antecedent_cfs:
        return rule_cf
    return rule_cf * min(antecedent_cfs)

def enumerate_path_outcomes(path_nodes: List[Node], path_edges: List[Edge]) -> List[float]:
    """
    Enumerate all combinations of alternative CFs across nodes on a path,
    compute outcome CF for each combination using product of rule CFs and min of antecedent CFs.
    """
    alternatives = [n.cf_alternatives for n in path_nodes]
    results = []
    for combo in itertools.product(*alternatives):
        antecedent_min = min(combo)
        rule_product = 1.0
        for e in path_edges:
            rule_product *= e.rule_cf
        outcome_cf = rule_product * antecedent_min
        results.append(outcome_cf)
    return results

def propagate_network(network: SemanticNetwork, start_node_ids: List[str], end_node_id: str,
                      prune_threshold: Optional[float]=None, monte_carlo_samples: Optional[int]=None) -> Dict[str, Any]:
    """
    Compute outcome CF distribution for paths from any start_node to end_node.
    If monte_carlo_samples is provided, use Monte Carlo sampling instead of full enumeration.
    Returns dict with 'path_results' and aggregated stats.
    """
    # Build adjacency for path search
    adj = {}
    for e in network.edges:
        adj.setdefault(e.src, []).append(e.dst)

    # Find all simple paths (bounded) from starts to end
    all_paths = []
    for s in start_node_ids:
        try:
            # Use DFS with depth limit to avoid explosion
            stack = [(s, [s])]
            while stack:
                (node, path) = stack.pop()
                if node == end_node_id:
                    all_paths.append(path)
                    continue
                for e in network.get_outgoing(node):
                    if e.dst not in path and len(path) < 10:
                        stack.append((e.dst, path + [e.dst]))
        except Exception:
            pass

    # Convert paths to node and edge objects
    path_results = []
    for path in all_paths:
        path_nodes = [network.nodes[nid] for nid in path]
        path_edges = []
        for i in range(len(path)-1):
            # find edge object (take first matching)
            es = [e for e in network.edges if e.src == path[i] and e.dst == path[i+1]]
            if not es:
                raise ValueError(f"No edge for {path[i]} -> {path[i+1]}")
            path_edges.append(es[0])
        # enumeration or sampling
        if monte_carlo_samples and monte_carlo_samples > 0:
            samples = []
            for _ in range(monte_carlo_samples):
                combo = [random.choice(n.cf_alternatives) for n in path_nodes]
                antecedent_min = min(combo)
                rule_product = math.prod([e.rule_cf for e in path_edges])
                samples.append(rule_product * antecedent_min)
            path_outcomes = samples
        else:
            path_outcomes = enumerate_path_outcomes(path_nodes, path_edges)
        # optional pruning
        if prune_threshold is not None:
            path_outcomes = [v for v in path_outcomes if v >= prune_threshold]
        path_results.append({
            "path": path,
            "outcomes": path_outcomes,
            "mean": float(np.mean(path_outcomes)) if path_outcomes else 0.0,
            "min": float(np.min(path_outcomes)) if path_outcomes else 0.0,
            "max": float(np.max(path_outcomes)) if path_outcomes else 0.0,
            "count": len(path_outcomes)
        })

    # Aggregate across all paths
    all_outcomes = list(itertools.chain.from_iterable([p["outcomes"] for p in path_results]))
    stats = {
        "overall_mean": float(np.mean(all_outcomes)) if all_outcomes else 0.0,
        "overall_min": float(np.min(all_outcomes)) if all_outcomes else 0.0,
        "overall_max": float(np.max(all_outcomes)) if all_outcomes else 0.0,
        "total_scenarios": len(all_outcomes)
    }
    return {"path_results": path_results, "stats": stats, "all_outcomes": all_outcomes}

# ---------------------------
# Visualization utilities
# ---------------------------

def draw_semantic_diagram(network: SemanticNetwork, highlight_path: Optional[List[str]]=None, figsize=(8,5)):
    """
    Draw the semantic diagram using networkx. Nodes are labeled with id and mean CF.
    highlight_path: optional list of node ids to highlight.
    """
    G = nx.DiGraph()
    for nid, node in network.nodes.items():
        mean_cf = np.mean(node.cf_alternatives) if node.cf_alternatives else 0.0
        G.add_node(nid, label=f"{node.label}\nmean_cf={mean_cf:.2f}")
    for e in network.edges:
        G.add_edge(e.src, e.dst, weight=e.rule_cf, label=f"r={e.rule_cf:.2f}")

    pos = nx.spring_layout(G, seed=42)
    plt.figure(figsize=figsize)
    node_colors = []
    for n in G.nodes():
        if highlight_path and n in highlight_path:
            node_colors.append('lightgreen')
        else:
            node_colors.append('lightblue')
    nx.draw_networkx_nodes(G, pos, node_color=node_colors, node_size=1600)
    labels = nx.get_node_attributes(G, 'label')
    nx.draw_networkx_labels(G, pos, labels=labels, font_size=9)
    # edges
    edge_labels = nx.get_edge_attributes(G, 'label')
    nx.draw_networkx_edges(G, pos, arrowstyle='->', arrowsize=14)
    nx.draw_networkx_edge_labels(G, pos, edge_labels=edge_labels, font_size=8)
    plt.axis('off')
    plt.title("Semantic Diagram")
    plt.show()

def plot_outcome_distribution(outcomes: List[float], bins: int=20, figsize=(7,4)):
    """Plot histogram and kernel density of outcome CFs."""
    if not outcomes:
        print("No outcomes to plot.")
        return
    plt.figure(figsize=figsize)
    plt.hist(outcomes, bins=bins, density=True, alpha=0.6, color='C0', edgecolor='black')
    # simple KDE via gaussian smoothing
    xs = np.linspace(min(outcomes), max(outcomes), 200)
    from scipy.stats import gaussian_kde
    kde = gaussian_kde(outcomes)
    plt.plot(xs, kde(xs), color='C1', lw=2)
    plt.xlabel("Outcome CF")
    plt.ylabel("Density")
    plt.title("Outcome CF Distribution")
    plt.show()

# ---------------------------
# Fence example builder
# ---------------------------

def build_fence_example() -> SemanticNetwork:
    """
    Build the semantic network for the fence painting example following the document.
    Nodes:
      n3: paint_obtained (cf alternatives [.64, .32])
      n6: brush_prepared (cf alternatives [.45, .42, .22, .22])
      n9: fence_painted (cf alternatives computed but here we set same alternatives)
      n11: impression (user/utiliser)
    Edges:
      n3 -> n6 (rule_cf = 0.7)
      n6 -> n9 (rule_cf = 1.0)
      n10 -> n11 (product impression path) -- optional
    """
    net = SemanticNetwork()
    # Nodes
    net.add_node(Node(id="n3", label="paint_obtained", cf_alternatives=[0.64, 0.32]))
    net.add_node(Node(id="n6", label="brush_prepared", cf_alternatives=[0.45, 0.42, 0.22, 0.22]))
    # For n9 we will compute outcomes; but include alternatives as in document
    net.add_node(Node(id="n9", label="fence_painted", cf_alternatives=[0.45, 0.42, 0.22, 0.22]))
    # Optional impression node
    net.add_node(Node(id="n11", label="impression", cf_alternatives=[1.0]))
    # Edges
    net.add_edge(Edge(src="n3", dst="n6", rule_cf=0.7, label="prepare brush rule"))
    net.add_edge(Edge(src="n6", dst="n9", rule_cf=1.0, label="paint fence rule"))
    # Connect to impression (n9 -> n11) with rule_cf 1.0
    net.add_edge(Edge(src="n9", dst="n11", rule_cf=1.0, label="impression rule"))
    return net

# ---------------------------
# Example usage (main)
# ---------------------------

def run_fence_example(show_plots: bool=True):
    """
    Run the fence example: build network, propagate CFs, print stats, and visualize.
    """
    net = build_fence_example()
    # Start nodes: n3 (paint obtained)
    result = propagate_network(net, start_node_ids=["n3"], end_node_id="n9")
    print("Fence example stats:")
    print(result["stats"])
    # Print path-level details
    for p in result["path_results"]:
        print("Path:", " -> ".join(p["path"]))
        print("  scenarios:", p["count"], "mean:", f"{p['mean']:.4f}", "min:", f"{p['min']:.4f}", "max:", f"{p['max']:.4f}")

    if show_plots:
        # Visualize semantic diagram and highlight a path
        draw_semantic_diagram(net, highlight_path=["n3","n6","n9"])
        # Plot outcome distribution (requires scipy for KDE)
        try:
            plot_outcome_distribution(result["all_outcomes"])
        except Exception as e:
            # fallback: simple histogram without KDE
            import matplotlib.pyplot as plt
            plt.hist(result["all_outcomes"], bins=10)
            plt.title("Outcome CF Histogram (fallback)")
            plt.show()

if __name__ == "__main__":
    run_fence_example(show_plots=True)
