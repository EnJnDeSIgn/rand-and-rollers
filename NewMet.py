import numpy as np

# Define the function and its derivative
def f(x):
    return x**3 - 2*x**2 + x - 3

def f_prime(x):
    return 3*x**2 - 4*x + 1

# Newton's Method
def newtons_method(f, f_prime, initial_guess, tolerance=1e-7, max_iterations=100):
    x = initial_guess
    for _ in range(max_iterations):
        x_new = x - f(x) / f_prime(x)
        if abs(x_new - x) < tolerance:
            return x_new
        x = x_new
    raise ValueError("Newton's Method did not converge")

# Parameters
initial_guess = np.random.uniform(0.0, 1.9)

# Find the root using Newton's Method
root = newtons_method(f, f_prime, initial_guess)

# Print the result
print(f"Root found at: {root}")
print(f"Function value at root: {f(root)}")

# Validate the result
x_vals = np.linspace(-1, 3, 400)
y_vals = f(x_vals)

import matplotlib.pyplot as plt
plt.plot(x_vals, y_vals, label='f(x)')
plt.axhline(0, color='black', linestyle='--')
plt.axvline(root, color='red', linestyle='--', label=f'Root at x={root:.5f}')
plt.title("Newton's Method")
plt.xlabel('x')
plt.ylabel('f(x)')
plt.legend()
plt.show()
