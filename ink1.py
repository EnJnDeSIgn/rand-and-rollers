import random
from colorama import Fore, Style, init

# Initialize colorama
init(autoreset=True)

# Define color codes as RGB tuples and their corresponding colorama colors
color_palette = [
    (255, 0, 0, Fore.RED),    # Red
    (0, 255, 0, Fore.GREEN),    # Green
    (255, 255, 0, Fore.YELLOW),  # Yellow
    (0, 0, 255, Fore.BLUE),    # Blue
    (255, 0, 255, Fore.MAGENTA),  # Magenta
    (0, 255, 255, Fore.CYAN),  # Cyan
    (255, 255, 255, Fore.WHITE),# White
    (128, 0, 128, Fore.MAGENTA),  # Purple
    (255, 165, 0, Fore.YELLOW),  # Orange
    (0, 128, 0, Fore.GREEN),    # Dark Green
    (75, 0, 130, Fore.MAGENTA)  # Indigo
]

class Ink:
    def __init__(self, color, viscosity, mood='neutral'):
        self.color = color
        self.viscosity = viscosity
        self.mood = mood  # The ink's 'mood' can affect how it behaves on the canvas

    def apply_to_canvas(self, canvas, position):
        # Determine the ink's behavior based on its 'mood'
        ink_length = 5  # Extend the line by a factor of 5
        ink_width = 1  # Make the line as thin as possible

        for _ in range(ink_length):
            new_position = (position[0] + _, position[1])  # Extend horizontally

            if self.mood == 'positive':
                # Random color from the palette with a positive bias
                random_color = random.choice(color_palette[:6])  # Brighter colors
            elif self.mood == 'negative':
                # Random color from the palette with a negative bias
                random_color = random.choice(color_palette[6:])  # Darker colors
            else:
                # Default random color from the full palette
                random_color = random.choice(color_palette)

            self.color = random_color  # Set the ink color to the randomly chosen color
            canvas.add_ink(self, new_position)

class Canvas:
    def __init__(self):
        self.contents = []

    def add_ink(self, ink, position):
        self.contents.append((ink, position, ink.color))  # Store the color

    def display(self):
        for item in self.contents:
            color_name = f"RGB{item[2][:3]}"
            color_fore = item[2][3]
            print(f"{color_fore}Ink: {color_name}, Position: {item[1]}, Viscosity: {item[0].viscosity}, Mood: {item[0].mood}{Style.RESET_ALL}")

# Define a new set of symbols
new_symbols = {
    'alpha': '🜂',  # Represents the beginning or a new start
    'omega': '🜃',  # Represents the end or completion
    'kappa': '🜄',  # Represents knowledge or learning
    # Add more symbols with their meanings here
}

# Function to encode a message with the new symbols
def encode_with_new_symbols(message, symbol_set):
    encoded_message = ''
    for char in message.lower():
        if char in symbol_set:
            encoded_message += symbol_set[char]
        else:
            encoded_message += char  # Keep the character as is if no symbol is defined
    return encoded_message

# Function to generate a pattern that changes based on a condition
def quantum_ink_pattern(condition):
    # Define two different states of the pattern
    state_one = '█'  # A filled block representing one state
    state_two = '░'  # A lighter block representing another state
    
    pattern = ''
    
    # Generate a pattern that changes based on the given condition
    for i in range(50):  # Extend the length of the pattern by a factor of 5
        if condition == 'positive':
            pattern += random.choice([state_one, state_two])
        else:
            pattern += state_two
    
    return pattern

# Function to generate a colorized quantum ink pattern
def quantum_ink_pattern_colored(condition):
    # Define two different states of the pattern
    state_one = '█'  # A filled block representing one state
    state_two = '░'  # A lighter block representing another state
    
    pattern = ''
    
    # Generate a pattern that changes based on the given condition
    for i in range(50):  # Extend the length of the pattern by a factor of 5
        if condition == 'positive':
            symbol = random.choice([state_one, state_two])
        else:
            symbol = state_two

        random_color = random.choice(color_palette)[3]
        pattern += f"{random_color}{symbol}{Style.RESET_ALL}"
    
    return pattern

# Example usage of Ink class with symbolic language and quantum pattern
black_ink = Ink(color='black', viscosity=10, mood='positive')
canvas = Canvas()
position = (100, 200)
black_ink.apply_to_canvas(canvas, position)

# Display the canvas contents
canvas.display()

# Encode a message with the new symbols
message = "Alpha to Omega"
encoded_message = encode_with_new_symbols(message, new_symbols)
print(f"Encoded message: {encoded_message}")

# Generate and print a quantum ink pattern based on a condition
current_condition = 'positive'  # This could be any condition you define
quantum_pattern = quantum_ink_pattern_colored(current_condition)
print(f"Quantum ink pattern: {quantum_pattern}")