import numpy as np
import matplotlib.pyplot as plt

# Define the new function and its gradient
def f(x):
    return x**4 - 3*x**3 + 2

def gradient(x):
    return 4*x**3 - 9*x**2

# Gradient Descent Algorithm with Adaptive Learning Rate
def gradient_descent(starting_point, learning_rate, num_iterations, clip_value=1e5):
    x = starting_point
    history = []
    for iteration in range(num_iterations):
        grad = gradient(x)
        x = x - learning_rate * grad
        # Clip the value of x to prevent overflow
        x = np.clip(x, -clip_value, clip_value)
        history.append(x)

        # Adapt learning rate dynamically
        if iteration > 0 and f(history[-1]) > f(history[-2]):
            learning_rate *= 0.5
        elif iteration > 0 and f(history[-1]) < f(history[-2]):
            learning_rate = min(learning_rate * 1.1, 0.5) # Prevent learning rate from becoming too large

    return x, history

# Random Parameters
starting_point = np.random.uniform(-10, 10)
learning_rate = np.random.uniform(0.01, 0.1)
num_iterations = np.random.randint(50, 200)

# Run Gradient Descent
minimum, history = gradient_descent(starting_point, learning_rate, num_iterations)

# Print the results
print(f"Starting point: {starting_point}")
print(f"Learning rate: {learning_rate}")
print(f"Number of iterations: {num_iterations}")
print(f"Minimum value found at: {minimum}")
print(f"Minimum value of function: {f(minimum)}")

# Plot the function and the descent
x_vals = np.linspace(-5, 5, 400)
y_vals = f(x_vals)
plt.plot(x_vals, y_vals, label='f(x)')

# Plot the descent history
history = np.array(history)
plt.scatter(history, f(history), color='red', zorder=5, label='Descent Path')
plt.title('Gradient Descent with Adaptive Learning Rate')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.legend()
plt.show()


