import random

# Groups for story generation
locations = [
    "in a mystical forest", "at the top of a mountain", "in a bustling city market"
]
characters = [
    "A brave knight", "A curious scientist", "A mischievous child"
]
plot_points = [
    "discover a hidden treasure", "uncover a dark secret", "save the kingdom"
]
complex_chas = [
    "brave, but reckless", "wise, but hesitant", "kind, but naive"
]
folktale_functions = [
    "Function 27: The Miracle", "Function 14: The Prophecy", "Function 5: Tests, Allies, Enemies",
    "Function 19: The Sacrifice", "Function 9: The Road Back", "Function 6: Approach",
    "Function 1: The Call to Adventure", "Function 25: The Magic of Nature", "Function 13: The Quest",
    "Function 10: Resurrection", "Function 2: Refusal of the Call", "Function 30: The Destiny",
    "Function 20: The Revelation", "Function 12: The Transformation", "Function 26: The Hidden World",
    "Function 31: The Epilogue", "Function 24: The Rebirth", "Function 7: The Ordeal",
    "Function 8: Reward", "Function 3: Meeting the Mentor", "Function 16: The Darkest Hour",
    "Function 23: The Journey", "Function 18: The Return", "Function 17: The Ultimate Boon",
    "Function 15: The Magic Helper", "Function 21: The Betrayal", "Function 4: Crossing the Threshold",
    "Function 28: The Encounter", "Function 22: The Challenge", "Function 29: The Transformation",
    "Function 11: Return with the Elixir"
]

def select_folktale_functions():
    """
    Randomly selects 5-10 folktale functions and sorts them numerically in ascending order.
    """
    num_functions = random.randint(5, 10)
    selected_functions = random.sample(folktale_functions, num_functions)
    # Sort based on the numeric value in "Function X: <Description>"
    selected_functions.sort(key=lambda f: int(f.split(":")[0].split()[1]))
    return selected_functions

def generate_story():
    """
    Generates a random story with sorted folktale functions.
    """
    location = random.choice(locations)
    character = random.choice(characters)
    plot_point = random.choice(plot_points)
    complex_cha = random.choice(complex_chas)
    selected_functions = select_folktale_functions()

    # Create the story
    story = (
        f"{character} found themselves {location}. They were there to {plot_point}.\n"
        f"Their personality was {complex_cha}.\n"
        f"Folktale Functions Involved (Sorted):\n" + "\n".join(selected_functions)
    )
    return story