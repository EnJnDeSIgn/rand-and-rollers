import numpy as np
import matplotlib.pyplot as plt

# Define the Rastrigin function
def rastrigin(X):
    A = 10
    return A * len(X) + sum([(x**2 - A * np.cos(2 * np.pi * x)) for x in X])

# Simulated Annealing Algorithm
def simulated_annealing(objective_function, bounds, initial_temp, cooling_rate, num_iterations):
    # Initial solution
    current_solution = np.random.uniform(bounds[0], bounds[1], len(bounds))
    current_value = objective_function(current_solution)
    best_solution = np.copy(current_solution)
    best_value = current_value

    # Lists for storing progress
    values = [current_value]

    # Simulated annealing process
    temperature = initial_temp
    for iteration in range(num_iterations):
        # Generate a new candidate solution
        candidate_solution = current_solution + np.random.uniform(-1, 1, len(bounds))
        candidate_solution = np.clip(candidate_solution, bounds[0], bounds[1])
        candidate_value = objective_function(candidate_solution)

        # Acceptance criteria
        if candidate_value < current_value or np.random.rand() < np.exp((current_value - candidate_value) / temperature):
            current_solution = candidate_solution
            current_value = candidate_value

        # Update the best solution found
        if current_value < best_value:
            best_solution = np.copy(current_solution)
            best_value = current_value

        # Reduce the temperature
        temperature *= cooling_rate

        # Store the best value found so far
        values.append(best_value)

    return best_solution, best_value, values

# Parameters
bounds = [-5.12, 5.12]
initial_temp = 100
cooling_rate = 0.99
num_iterations = 1000

# Execute the Simulated Annealing
best_solution, best_value, values = simulated_annealing(rastrigin, bounds, initial_temp, cooling_rate, num_iterations)

# Print the results
print(f"Best solution found: {best_solution}")
print(f"Best value found: {best_value}")

# Plot the convergence
plt.plot(values)
plt.title('Simulated Annealing Convergence')
plt.xlabel('Iteration')
plt.ylabel('Best Value')
plt.show()
