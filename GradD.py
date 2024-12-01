import numpy as np
import matplotlib.pyplot as plt

# Define the function and its gradient
def f(x):
    return x**2 + 4*x + 4

def gradient(x):
    return 2*x + 4

# Gradient Descent Algorithm
def gradient_descent(starting_point, learning_rate, num_iterations):
    x = starting_point
    history = []
    for _ in range(num_iterations):
        grad = gradient(x)
        x = x - learning_rate * grad
        history.append(x)
    return x, history

# Random Parameters
starting_point = np.random.uniform(-10, 10)
learning_rate = np.random.uniform(0.01, 0.5)
num_iterations = np.random.randint(50, 200)

# Run Gradient Descent
minimum, history = gradient_descent(starting_point, learning_rate, num_iterations)

# Print the result
print(f"Minimum value found at: {minimum}")
print(f"Minimum value of function: {f(minimum)}")

# Plot the function and the descent
x_vals = np.linspace(-10, 10, 400)
y_vals = f(x_vals)
plt.plot(x_vals, y_vals, label='f(x)')

# Plot the descent history
history = np.array(history)
plt.scatter(history, f(history), color='red', zorder=5, label='Descent Path')
plt.title('Gradient Descent')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.legend()
plt.show()
