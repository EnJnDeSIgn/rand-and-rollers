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
        
def transformative_display(x, text):
    derivative_value = positive_vibration_derivative(x)
    print(f"Computed derivative at x={x}: {derivative_value}")
    
    # Use the derivative to decide the mode of the glimmer spell
    if derivative_value > 10:
        transformed_text = temporary_glimmer(text, make_less_noticeable=False)
    else:
        transformed_text = temporary_glimmer(text, make_less_noticeable=True)
    
    return transformed_text

def get_x_value():
    while True:
        try:
            value = int(input("Enter a value for x (between 1 and 100): "))
            if 1 <= value <= 100:
                return value
            else:
                print("The value must be between 1 and 100. Please try again.")
        except ValueError:
            print("Invalid input. Please enter an integer.")

# Example usage:
original_text = "The chameleon dances in the glade, blending into his surroundings."

# Prompt the user for a valid x_value within the specified range
x_value = get_x_value()

# Apply the transformative display based on user input
result = transformative_display(x_value, original_text)
print("Transformative display result:", result)

# Demonstrate the two modes of temporary_glimmer for reference
print("Temporary Glimmer (hidden mode):", temporary_glimmer(original_text, make_less_noticeable=True))
print("Temporary Glimmer (bright mode):", temporary_glimmer(original_text, make_less_noticeable=False))