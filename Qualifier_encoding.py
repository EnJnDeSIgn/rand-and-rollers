# Minimal Python style pseudocode implementing CF propagation

class Node:
    def __init__(self, name, cf_alternatives):
        # cf_alternatives: list of floats e.g. [0.64, 0.32]
        self.name = name
        self.cfs = cf_alternatives

class Edge:
    def __init__(self, src, dst, rule_cf):
        self.src = src
        self.dst = dst
        self.rule_cf = rule_cf

def propagate_path(path_nodes, path_edges):
    # path_nodes: [Node1, Node2, ...]
    # path_edges: [Edge1, Edge2, ...] same length-1
    results = []
    # enumerate combinations of alternatives
    import itertools
    for combo in itertools.product(*[n.cfs for n in path_nodes]):
        antecedent_min = min(combo)
        rule_product = 1.0
        for e in path_edges:
            rule_product *= e.rule_cf
        outcome_cf = rule_product * antecedent_min
        results.append(outcome_cf)
    return results

# Example: nodes with alternatives
n3 = Node('paint_obtained', [0.64, 0.32])
n6 = Node('brush_prepared', [0.45, 0.42, 0.22, 0.22])
n9 = Node('fence_painted', [0.45, 0.42, 0.22, 0.22])  # target

# edges with rule certainties (example values)
e1 = Edge(n3, n6, 0.7)
e2 = Edge(n6, n9, 1.0)

outcomes = propagate_path([n3, n6, n9], [e1, e2])
# outcomes is a list of CFs for each scenario
