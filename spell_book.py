def positive_vibration(x):
    return x**2 + 3*x + 2

def positive_vibration_derivative(x):
    return 2*x + 3

def temporary_glimmer(text, make_less_noticeable):
    if make_less_noticeable:
        # Enact the vanishing spell: hide the message with asterisks
        return ''.join(['*' if c.isalpha() else c for c in text])
    else:
        # Brighten the text with an empowering transformation
        return text.upper()

def mirror_spell(text):
    """Spell that casts a reflection, reversing the text."""
    return text[::-1]

def alternating_caps_spell(text):
    """Spell that alternates uppercase and lowercase letters."""
    result = ""
    for i, c in enumerate(text):
        result += c.upper() if i % 2 == 0 else c.lower()
    return result

def caesar_spell(text, shift=3):
    """A magical Caesar cipher that shifts letters."""
    def shift_char(c):
        if c.isalpha():
            base = ord('A') if c.isupper() else ord('a')
            return chr((ord(c) - base + shift) % 26 + base)
        return c
    return "".join(shift_char(c) for c in text)

# Define a simple Morse code mapping
MORSE_CODE_DICT = {
    'A': '.-',  'B': '-...', 'C': '-.-.', 'D': '-..',
    'E': '.',   'F': '..-.', 'G': '--.',  'H': '....',
    'I': '..',  'J': '.---', 'K': '-.-',  'L': '.-..',
    'M': '--',  'N': '-.',   'O': '---',  'P': '.--.',
    'Q': '--.-','R': '.-.',  'S': '...',  'T': '-',
    'U': '..-', 'V': '...-', 'W': '.--',  'X': '-..-',
    'Y': '-.--','Z': '--..',
    '1': '.----','2': '..---','3': '...--','4': '....-',
    '5': '.....','6': '-....','7': '--...','8': '---..',
    '9': '----.','0': '-----', ' ': '/'
}

def morse_spell(text):
    """Spell that transforms text into Morse code."""
    return ' '.join(MORSE_CODE_DICT.get(c, c) for c in text.upper())

import random

def random_spell(text):
    """Randomly selects and casts one of the available spells on the text."""
    spells = [mirror_spell, alternating_caps_spell, caesar_spell, morse_spell]
    spell = random.choice(spells)
    return spell(text), spell.__name__

def transformative_display(x, text, spell_func=random_spell):
    derivative_value = positive_vibration_derivative(x)
    print(f"Computed derivative at x={x}: {derivative_value}")
    
    # Decide which spell to use based on derivative value or external selection
    transformed_text = spell_func(text)
    
    # If spell_func returns a tuple (result and name), unpack it; otherwise use the result directly.
    if isinstance(transformed_text, tuple):
        transformed_text, spell_name = transformed_text
        print(f"Spell used: {spell_name}")
    
    return transformed_text

def get_x_value():
    while True:
        try:
            value = float(input("Enter a value for x (between 1 and 100): "))
            if 1.0 <= value <= 100.0:
                return value
            else:
                print("The value must be between 1 and 100. Please try again.")
        except ValueError:
            print("Invalid input. Please enter an integer.")

# Example usage:
original_text = "The chameleon dances in the glade, blend then shift and now he's shade."

# Prompt the user for a valid x_value within the specified range
x_value = get_x_value()

# Apply the transformative display based on user input
result = transformative_display(x_value, original_text)
print("Transformative display result:", result)

print("spell        : I CHANGE MYSELF TO SUIT THE NEED!#!")

# Demonstrate the two modes of temporary_glimmer for reference
original_text = "My essence now they can not see..."
print("(hidden mode):", temporary_glimmer(original_text, make_less_noticeable=True))
original_text = "I am the change they need too see!"
print("(bright mode):", temporary_glimmer(original_text, make_less_noticeable=False))

print("S.M.I.B      : so mote it be.")