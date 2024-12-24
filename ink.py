import random
import numpy as np
import matplotlib.pyplot as plt
from collections import Counter

class Ink:
    def __init__(self, color, viscosity, mood='neutral'):
        self.color = color
        self.viscosity = viscosity
        self.mood = mood

    def apply_to_canvas(self, canvas, position):
        # Add ink to canvas
        canvas.add_ink(self, position)
        
    def encode_mood(self, encoded_message):
        symbol_counts = Counter(encoded_message)
        most_common_symbol = symbol_counts.most_common(1)[0][0]
        
        mood_symbols = {
            '🜂': 'positive',
            '🜃': 'negative'
        }
        
        self.mood = mood_symbols.get(most_common_symbol, 'neutral')
        return self.mood

class Canvas:
    def __init__(self):
        self.contents = []

    def add_ink(self, ink, position):
        self.contents.append((ink, position))

    def display(self):
        for item in self.contents:
            print(f"Ink: {item[0].color}, Position: {item[1]}, Viscosity: {item[0].viscosity}, Mood: {item[0].mood}")

# Define a new set of symbols
new_symbols = {
    'alpha': '🜂',  # Represents the beginning or a new start
    'omega': '🜃',  # Represents the end or completion
    'kappa': '🜄',  # Represents knowledge or learning
    'delta': '🜅',  # Represents change or difference
    'phi': '🜆',    # Represents balance or harmony
    'theta': '🜇',  # Represents thought or contemplation
    'sigma': '🜈',  # Represents total or sum
    'rho': '🜉',    # Represents flow or movement
    'epsilon': '🜊',# Represents small quantity or error
    'lambda': '🜋', # Represents light or enlightenment
    'tau': '🜌',    # Represents time or duration
    'upsilon': '🜍',# Represents mystery or unknown
    # Add more symbols with their meanings here
}

# Define color codes
colors = [
    '\033[31m',  # Red
    '\033[32m',  # Green
    '\033[33m',  # Yellow
    '\033[34m',  # Blue
    '\033[35m',  # Magenta
    '\033[36m',  # Cyan
    '\033[37m',  # White
]

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
def quantum_ink_pattern(condition, size=10):
    # Define different states of the pattern using symbols for colors
    states = list(new_symbols.values())
    
    pattern = ''
    
    # Generate a pattern that changes based on the given condition
    for _ in range(size):  # Generate pattern with 'size' lines
        line = ''
        for _ in range(size):
            if condition == 'positive':
                symbol = random.choice(states)
                color = random.choice(colors)
                line += f"{color}{symbol}\033[0m"  # Add color to the symbol
            else:
                symbol = states[0]  # Default to the first symbol for non-positive condition
                color = random.choice(colors)
                line += f"{color}{symbol}\033[0m"  # Add color to the symbol
        pattern += line + '\n'  # Newline after each row to form a square pattern
    
    return pattern

def generate_fractal(size, max_iter):
    # Create a grid of complex numbers
    x = np.linspace(-2.5, 1.5, size)
    y = np.linspace(-2, 2, size)
    X, Y = np.meshgrid(x, y)
    C = X + 1j * Y
    Z = np.zeros_like(C)
    fractal = np.zeros(C.shape, dtype=int)
    
    for i in range(max_iter):
        mask = np.abs(Z) <= 2
        Z[mask] = Z[mask]**2 + C[mask]
        fractal += mask
    
    return fractal

def plot_fractal(fractal, title):
    plt.figure(figsize=(10, 10))
    plt.imshow(fractal, cmap='twilight', extent=(-2.5, 1.5, -2, 2))
    plt.colorbar()
    plt.title(title)
    plt.show()

# Example usage of Ink class with symbolic language and fractal pattern
black_ink = Ink(color='black', viscosity=10)
canvas = Canvas()
position = (100, 200)

# Encode a message with the new symbols
message = "Alpha to Omega"
encoded_message = encode_with_new_symbols(message, new_symbols)
print(f"Encoded message: {encoded_message}")

# Set the mood of the ink based on the encoded message
mood = black_ink.encode_mood(encoded_message)
print(f"Determined Mood: {mood}")

# Generate and print a quantum ink pattern based on a condition
current_condition = 'positive'  # This could be any condition you define
quantum_pattern = quantum_ink_pattern(current_condition, size=30)  # Adjust size for a larger pattern
print(f"Quantum ink pattern:\n{quantum_pattern}")

# Apply the ink to the canvas
black_ink.apply_to_canvas(canvas, position)

# Display the canvas contents
canvas.display()

# Generate and plot the fractal
size = 800  # Adjust size for higher resolution
max_iter = 100  # Adjust max iterations for more detail
fractal = generate_fractal(size, max_iter)
plot_fractal(fractal, "Fractal Pattern")

# The fractal pattern could be used to add a layer of complexity to the artwork

# The quantum ink pattern could be used to add a layer of complexity to the artwork