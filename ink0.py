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

# Define color codes as RGB tuples
color_palette = [
    (255, 0, 0),    # Red
    (0, 255, 0),    # Green
    (255, 255, 0),  # Yellow
    (0, 0, 255),    # Blue
    (255, 0, 255),  # Magenta
    (0, 255, 255),  # Cyan
    (255, 255, 255),# White
    (128, 0, 128),  # Purple
    (255, 165, 0),  # Orange
    (0, 128, 0),    # Dark Green
    (75, 0, 130)    # Indigo
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

def generate_fractal(size, max_iter):
    np.random.seed(random.randint(0, 10000))

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

def apply_colors_and_symbols(fractal, colors, symbols):
    height, width = fractal.shape
    colored_fractal = np.zeros((height, width, 3), dtype=int)

    for y in range(height):
        for x in range(width):
            color = colors[fractal[y, x] % len(colors)]
            colored_fractal[y, x] = color

    return colored_fractal, symbols

def apply_random_color(image, colors):
    height, width, _ = image.shape
    for y in range(height):
        for x in range(width):
            if random.choice([True, False]):
                image[y, x] = random.choice(colors)
    return image

def overlay_symbols(colored_fractal, symbols):
    from matplotlib.font_manager import FontProperties

    # Specify the corrected path to the Noto Sans Symbols font
    font_path = r'C:\users\enjn\Noto_Sans_Symbols\static\NotoSansSymbols-Regular.ttf'
    font_prop = FontProperties(fname=font_path)

    plt.figure(figsize=(10, 10))
    plt.imshow(colored_fractal)
    
    height, width, _ = colored_fractal.shape
    for y in range(height):
        for x in range(width):
            if random.choice([True, False]):
                symbol = random.choice(list(symbols.values()))
                plt.text(x, y, symbol, fontsize=8, ha='center', va='center', color='black', fontproperties=font_prop)

    plt.axis('off')
    plt.show()

# Example usage of Ink class with symbolic language and kaleidoscope fractal pattern
black_ink = Ink(color='black', viscosity=10)
canvas = Canvas()

# Randomize position
position = (random.randint(0, 500), random.randint(0, 500))
print(f"Random Position: {position}")

# Encode a message with the new symbols
message = "Alpha to Omega"
encoded_message = encode_with_new_symbols(message, new_symbols)
print(f"Encoded message: {encoded_message}")

# Generate the fractal with 40 iterations
size = 250  # Adjust size for resolution
max_iter = 40  # 40 iterations for fine detail
fractal = generate_fractal(size, max_iter)

# Apply colors and symbols
colored_fractal, symbols = apply_colors_and_symbols(fractal, color_palette, new_symbols)

# Apply random colors
colored_fractal = apply_random_color(colored_fractal, color_palette)

# Overlay symbols on the colored fractal with updated font support
overlay_symbols(colored_fractal, symbols)