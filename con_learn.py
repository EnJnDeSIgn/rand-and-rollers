import numpy as np
import matplotlib.pyplot as plt

# Define the function f(x) = 1/x
def f(x):
    return 1 / x

# Create an array of x values
x = np.linspace(0.1, 10, 400)
y = f(x)

# Plot the function
plt.figure(figsize=(10, 6))
plt.plot(x, y, label='$f(x) = \\frac{1}{x}$')
plt.axhline(0, color='black', linewidth=0.5, linestyle='--')
plt.axvline(0, color='black', linewidth=0.5, linestyle='--')
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
plt.title('The Limit of $f(x) = \\frac{1}{x}$ as $x$ Approaches Infinity')
plt.legend()
plt.grid(True)
plt.show()