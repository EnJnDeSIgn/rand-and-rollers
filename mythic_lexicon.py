"""
mythic_lexicon.py — Procedural mythic sound-lexicon generator

Usage:
    - Import MythicLexiconGenerator and call methods from Python.
    - Run as a script to print sample outputs and write a JSON lexicon.

Example:
    from mythic_lexicon import MythicLexiconGenerator
    gen = MythicLexiconGenerator(seed=42)
    lex = gen.generate_dictionary(50)
    gen.save_json(lex, "lexicon.json")

Description:
    Generates evocative "sound-words" using:
      - Phoneme pools (consonant starts, vowels, endings)
      - Category → phonetic mood mapping (wind, water, stone, ritual, magic, memory, etc.)
      - Patterns for syllable construction, including a "mythic form" with suffixes
      - Semantic mapping that produces a mythic, sensory description for each word
"""

from typing import List, Dict, Optional, Tuple
import random
import json
import argparse


class MythicLexiconGenerator:
    def __init__(self, seed: Optional[int] = None):
        self.rng = random.Random(seed)

        # Phoneme Forge: curated pools
        self.consonant_pools = {
            # Harsh / elemental
            "harsh": ["kh", "k", "g", "gr", "pt", "dr", "th"],
            # Soft / mystical
            "soft": ["m", "n", "l", "v", "y", "r", "h"],
            # Aspirated / airy
            "airy": ["h", "sh", "wh", "ph", "f", "th", "kh"],
            # Liquid
            "liquid": ["l", "r", "m", "n", "w"],
            # Dry / sand-like
            "dry": ["s", "t", "k", "x"],
            # Hard / stone
            "hard": ["k", "g", "d", "pt", "gr"],
            # Resonant (for ritual)
            "resonant": ["r", "m", "n", "ng", "rn"],
            # Mystic soft
            "mystic": ["l", "v", "s", "y", "z"],
            # Echoic (memory / echo)
            "echoic": ["r", "n", "gh", "rr"],
        }

        # Vowels grouped by "texture"
        self.vowel_pools = {
            "earthy": ["a", "o", "au"],
            "mystic": ["ae", "e", "ei", "i", "y"],
            "whispery": ["i", "u", "y", "ou", "ui"],
            "short": ["a", "e", "i", "o", "u"],
            "light": ["a", "i", "e"],
            "deep": ["o", "au", "u"],
        }

        # Endings
        self.ending_pools = {
            "sharp": ["k", "t", "s", "x"],
            "soft": ["m", "n", "l", "r"],
            "resonant": ["n", "rn", "th", "et", "ut"],
        }

        # Category → phonetic mood mapping (influences which pools are used)
        # Each mapping defines likely consonant pool(s), vowel pool, and ending mood
        self.category_map = {
            # Natural Sounds
            "wind": {"c": ["airy"], "v": "whispery", "e": ["soft", "resonant"]},
            "water": {"c": ["liquid"], "v": "mystic", "e": ["soft", "resonant"]},
            "sand": {"c": ["dry"], "v": "short", "e": ["sharp", "soft"]},
            "stone": {"c": ["hard", "harsh"], "v": "earthy", "e": ["sharp", "resonant"]},
            "animal": {"c": ["harsh", "liquid"], "v": "short", "e": ["soft", "resonant"]},
            "vegetation": {"c": ["soft", "liquid"], "v": "earthy", "e": ["soft", "resonant"]},

            # Human / Ritual
            "tools": {"c": ["hard", "harsh"], "v": "short", "e": ["sharp"]},
            "footsteps": {"c": ["dry", "resonant"], "v": "short", "e": ["soft"]},
            "chanting": {"c": ["resonant", "mystic"], "v": "mystic", "e": ["resonant"]},
            "breath": {"c": ["airy", "soft"], "v": "whispery", "e": ["soft"]},
            "cloth": {"c": ["soft"], "v": "whispery", "e": ["soft"]},
            "instruments": {"c": ["resonant", "hard"], "v": "mystic", "e": ["resonant", "sharp"]},

            # Mythic / Metaphysical
            "magic": {"c": ["mystic", "soft"], "v": "mystic", "e": ["resonant", "soft"]},
            "fate": {"c": ["resonant", "harsh"], "v": "earthy", "e": ["resonant"]},
            "memory": {"c": ["echoic", "resonant"], "v": "mystic", "e": ["resonant"]},
            "light": {"c": ["airy", "mystic"], "v": "light", "e": ["soft"]},
            "shadow": {"c": ["harsh", "echoic"], "v": "deep", "e": ["resonant", "soft"]},
            "rebirth": {"c": ["resonant", "soft"], "v": "mystic", "e": ["resonant"]},
            "celestial": {"c": ["airy", "resonant"], "v": "mystic", "e": ["resonant"]},
        }

        # Patterns for constructing words (as templates)
        # 'C1', 'V', 'C2', 'C1b' to denote second onset if needed, 'SUF' for mythic suffix
        self.patterns = [
            ["C1", "V"],
            ["C1", "V", "C2"],
            ["C1", "V", "C1b", "V"],
            ["C1", "V", "C2", "V"],
            ["C1", "V", "C1b", "SUF"],  # mythic form (suffix like -et / -en / -is / -ut)
        ]

        self.mythic_suffixes = ["et", "en", "is", "ut", "ael", "oth"]

        # Adjectives, sources and symbolic resonances to build meanings
        self.adjectives = {
            "wind": ["thin", "trembling", "whistling", "spiraling"],
            "water": ["shimmering", "lapping", "liquid", "gurgling"],
            "sand": ["dry", "scraping", "gritty"],
            "stone": ["heavy", "hollow", "groaning", "granular"],
            "animal": ["urgent", "sharp", "call-like"],
            "vegetation": ["rustling", "soughing", "green"],
            "tools": ["metallic", "clangorous", "struck"],
            "footsteps": ["soft", "measured", "pounding"],
            "chanting": ["resonant", "hypnotic", "low"],
            "breath": ["gentle", "labored", "wheezing"],
            "cloth": ["fluttering", "hush-like"],
            "instruments": ["sonorous", "plucked", "bowed"],
            "magic": ["humming", "pulselike", "otherworldly"],
            "fate": ["inevitable", "faint", "slow"],
            "memory": ["echoing", "fading", "palimpsest"],
            "light": ["tinkling", "clear", "bright"],
            "shadow": ["muffled", "soughing", "hushed"],
            "rebirth": ["rising", "warm", "renewing"],
            "celestial": ["vast", "distant", "orbital"],
        }

        self.sources = {
            "wind": ["temple stones", "narrow canyons", "high ridges"],
            "water": ["still pools", "riverbed", "moonlit shore"],
            "sand": ["limestone", "dune ridges", "dry courtyard"],
            "stone": ["underground chasm", "ancient monolith"],
            "animal": ["desert falcon", "waterfowl", "howling jackals"],
            "vegetation": ["oleander thicket", "palm whispers"],
            "tools": ["bronze hammer", "chisel on stone"],
            "footsteps": ["marble hall", "packed earth"],
            "chanting": ["circular altar", "chorus of acolytes"],
            "breath": ["sleeping giant", "priestess exhale"],
            "cloth": ["linen robes", "curtains"],
            "instruments": ["lyre", "frame drum", "bronze bell"],
            "magic": ["sealed sigil", "darkened sanctum"],
            "fate": ["turning wheel", "woven thread"],
            "memory": ["old archive", "tomb's hall"],
            "light": ["moon", "dawn beam", "reflected blade"],
            "shadow": ["tunnel mouth", "archway"],
            "rebirth": ["buried seed", "phoenix heart"],
            "celestial": ["orbiting bodies", "distant bells"],
        }

        self.symbolic_resonances = {
            "wind": ["breath of the gods", "harbinger of change"],
            "water": ["mirror of lost things", "song of tides"],
            "sand": ["time's teeth", "record of passing"],
            "stone": ["memory of the earth", "root of silence"],
            "animal": ["call of the hunt", "spirit echo"],
            "vegetation": ["sungrowth", "green memory"],
            "tools": ["craft's imprint", "work's rhythm"],
            "footsteps": ["pilgrim progress", "march of seasons"],
            "chanting": ["binding word", "prayer's curve"],
            "breath": ["life's hush", "soul's stirring"],
            "cloth": ["veil's murmur", "soft armor"],
            "instruments": ["voice of metal", "woven tone"],
            "magic": ["latent law", "thrum of possibility"],
            "fate": ["thread's pull", "unseen accounting"],
            "memory": ["palimpsest of selves", "echo of names"],
            "light": ["clarifying spark", "silver thread"],
            "shadow": ["hidden ledger", "quiet counterpoint"],
            "rebirth": ["seed's promise", "cycle renewed"],
            "celestial": ["orbits' hymn", "sphere's slow chime"],
        }

    def _choose_from_pool(self, pool_name: str) -> str:
        """Pick a random entry from a named consonant pool."""
        pool = self.consonant_pools.get(pool_name)
        if not pool:
            # Fallback to soft pool
            pool = self.consonant_pools["soft"]
        choice = self.rng.choice(pool)
        return choice

    def _choose_vowel(self, vowel_pool_name: str) -> str:
        pool = self.vowel_pools.get(vowel_pool_name)
        if not pool:
            pool = self.vowel_pools["short"]
        return self.rng.choice(pool)

    def _choose_ending(self, ending_pool_name: str) -> str:
        pool = self.ending_pools.get(ending_pool_name)
        if not pool:
            pool = self.ending_pools["soft"]
        return self.rng.choice(pool)

    def _pick_category(self, forced: Optional[str] = None) -> str:
        if forced:
            if forced not in self.category_map:
                raise ValueError(f"Unknown category: {forced}")
            return forced
        return self.rng.choice(list(self.category_map.keys()))

    def _choose_pattern(self) -> List[str]:
        return self.rng.choice(self.patterns)

    def _assemble_word(self, category: str, pattern: List[str]) -> Tuple[str, Dict]:
        mapping = self.category_map[category]
        c_choices = mapping["c"]  # list of consonant pool names
        v_choice = mapping["v"]   # vowel pool name
        e_choices = mapping.get("e", ["soft"])  # endings mood names

        components = []
        phonemes_used = {"C1": None, "V": None, "C1b": None, "C2": None, "SUF": None}

        # helper for picking consonant given potential mult pools
        def pick_consonant(pool_names: List[str]) -> str:
            pool_name = self.rng.choice(pool_names)
            return self._choose_from_pool(pool_name)

        for token in pattern:
            if token == "C1":
                c1 = pick_consonant(c_choices)
                components.append(c1)
                phonemes_used["C1"] = c1
            elif token == "C1b":
                # second onset (could be similar or different selection)
                c1b = pick_consonant(c_choices)
                # avoid exact repetition with C1 if it would make awkward combos (allow if different)
                if c1b == phonemes_used.get("C1"):
                    # try one more time or accept
                    alt = pick_consonant(c_choices)
                    c1b = alt if alt != c1b else c1b
                components.append(c1b)
                phonemes_used["C1b"] = c1b
            elif token == "V":
                v = self._choose_vowel(v_choice)
                components.append(v)
                phonemes_used["V"] = v
            elif token == "C2":
                ending_pool = self.rng.choice(e_choices)
                c2 = self._choose_ending(ending_pool)
                components.append(c2)
                phonemes_used["C2"] = c2
            elif token == "SUF":
                suf = self.rng.choice(self.mythic_suffixes)
                components.append(suf)
                phonemes_used["SUF"] = suf
            else:
                # unknown token; ignore gracefully
                pass

        # join and normalize:
        raw = "".join(components)

        # Normalization rules to keep visuals pronounceable:
        # - collapse triple letters, fix impossible clusters, simple substitutions
        # e.g., khk -> khk (leave), but "aa" -> "a"
        normalized = self._normalize_surface(raw)

        # Title-case to feel like a proper name
        surface = normalized.capitalize()

        return surface, phonemes_used

    def _normalize_surface(self, s: str) -> str:
        # remove duplicated vowels beyond 2
        import re
        s = re.sub(r"([aeiouy]{2,})", lambda m: m.group(1)[:2], s)
        # prevent awkward double-consonant repeats for simple clusters
        s = re.sub(r"(kh){2,}", "kh", s)
        s = re.sub(r"(rr){2,}", "rr", s)
        # very small rule set — keep it light
        return s

    def _generate_meaning(self, word: str, category: str) -> str:
        adj = self.rng.choice(self.adjectives.get(category, ["strange"]))
        src = self.rng.choice(self.sources.get(category, ["an unknown source"]))
        sym = self.rng.choice(self.symbolic_resonances.get(category, ["a hidden resonance"]))
        meaning = f"{word}: the {adj} sound of {src}, {sym}"
        return meaning

    def generate_word(self, category: Optional[str] = None) -> Dict:
        """
        Generate a single mythic sound-word.

        Returns a dict with:
          - word (string)
          - category (string)
          - pattern (list)
          - phonemes (dict of components)
          - meaning (string)
          - association (symbolic resonance)
        """
        cat = self._pick_category(category)
        pattern = self._choose_pattern()
        word_surface, phonemes = self._assemble_word(cat, pattern)
        meaning = self._generate_meaning(word_surface, cat)
        association = self.rng.choice(self.symbolic_resonances.get(cat, ["ancient hum"]))

        result = {
            "word": word_surface,
            "category": cat,
            "pattern": pattern,
            "phonemes": phonemes,
            "meaning": meaning,
            "association": association,
        }
        return result

    def generate_dictionary(self, count: int = 100, categories: Optional[List[str]] = None) -> List[Dict]:
        """
        Generate a list (dictionary) of unique mythic sound-words.

        If categories is provided, words will be sampled from that set.
        """
        out = []
        seen = set()
        tries = 0
        max_tries = count * 10  # avoid infinite loops if uniqueness is impossible

        while len(out) < count and tries < max_tries:
            tries += 1
            cat = None
            if categories:
                cat = self.rng.choice(categories)
            entry = self.generate_word(category=cat)
            key = (entry["word"].lower(), entry["category"])
            if key in seen:
                continue
            seen.add(key)
            out.append(entry)

        if len(out) < count:
            # fill remaining with non-unique tolerant generation
            while len(out) < count:
                out.append(self.generate_word(category=self.rng.choice(categories) if categories else None))

        return out

    def save_json(self, lexicon: List[Dict], filepath: str):
        with open(filepath, "w", encoding="utf-8") as f:
            json.dump(lexicon, f, ensure_ascii=False, indent=2)

    def pretty_print(self, lexicon: List[Dict], limit: Optional[int] = 20):
        count = min(limit, len(lexicon))
        for i in range(count):
            e = lexicon[i]
            print(f"- {e['word']}: {e['meaning']} (category: {e['category']})")

    # Utility: generate and return textual mythic lexicon suitable for presentation
    def generate_textual_lexicon(self, count: int = 12, categories: Optional[List[str]] = None) -> str:
        lex = self.generate_dictionary(count, categories)
        lines = []
        for e in lex:
            lines.append(f"{e['word']}: the {e['meaning'].split(':',1)[1].strip()}")
        return "\n".join(lines)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Mythic sound-lexicon generator")
    parser.add_argument("--count", "-n", type=int, default=20, help="How many words to generate")
    parser.add_argument("--seed", "-s", type=int, default=None, help="Random seed (int)")
    parser.add_argument("--out", "-o", type=str, default=None, help="Optional output JSON file path")
    parser.add_argument("--categories", "-c", type=str, nargs="*", default=None,
                        help="Optional list of categories to restrict to")
    args = parser.parse_args()

    gen = MythicLexiconGenerator(seed=args.seed)
    lex = gen.generate_dictionary(args.count, categories=args.categories)
    print(f"Generated {len(lex)} mythic sound-words (seed={args.seed})\n")
    gen.pretty_print(lex, limit=args.count)

    if args.out:
        gen.save_json(lex, args.out)
        print(f"\nSaved lexicon to {args.out}")