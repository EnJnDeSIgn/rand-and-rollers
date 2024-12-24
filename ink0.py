import random
import numpy as np
import matplotlib.pyplot as plt
from collections import Counter
import matplotlib.animation as animation
from PIL import Image, ImageFilter

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

# Function to encode a message with the new symbols
def encode_with_new_symbols(message, symbol_set):
    encoded_message = ''
    for char in message.lower():
        if char in symbol_set:
            encoded_message += symbol_set[char]
        else:
            encoded_message += char  # Keep the character as is if no symbol is defined
    return encoded_message

def generate_fractal(size, max_iter, mood):
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
    
    if mood == 'positive':
        cmap = 'spring'  # Use a color map that represents a positive mood
    elif mood == 'negative':
        cmap = 'autumn'  # Use a color map that represents a negative mood
    else:
        cmap = 'twilight'  # Default color map for neutral mood
    
    return fractal, cmap

def plot_fractal(fractal, cmap, title):
    plt.figure(figsize=(10, 10))
    plt.imshow(fractal, cmap=cmap, extent=(-2.5, 1.5, -2, 2))
    plt.colorbar()
    plt.title(title)
    plt.show()

def interactive_fractal():
    size = int(input("Enter size of the fractal (e.g., 800): "))
    max_iter = int(input("Enter max iterations (e.g., 100): "))
    mood = 'positive'  # Set mood for testing, can be changed dynamically
    fractal, cmap = generate_fractal(size, max_iter, mood)
    plot_fractal(fractal, cmap, "Interactive Fractal Pattern")

interactive_fractal()

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

# Apply the ink to the canvas
black_ink.apply_to_canvas(canvas, position)

# Display the canvas contents
canvas.display()

# Generate and plot the fractal based on the mood
size = 800  # Adjust size for higher resolution
max_iter = 100  # Adjust max iterations for more detail
fractal, cmap = generate_fractal(size, max_iter, mood)
plot_fractal(fractal, cmap, "Fractal Pattern")
