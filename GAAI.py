import numpy as np

# Define the Rastrigin function
def rastrigin(X):
    A = 10
    return A * len(X) + sum([(x**2 - A * np.cos(2 * np.pi * x)) for x in X])

# Genetic Algorithm Components
def initialize_population(pop_size, dimensions, bounds):
    return np.random.uniform(bounds[0], bounds[1], (pop_size, dimensions))

def evaluate_population(population, objective_function):
    return np.array([objective_function(ind) for ind in population])

def select_parents(population, fitness, num_parents):
    return population[np.argsort(fitness)[-num_parents:]]

def crossover(parents, offspring_size):
    offspring = np.empty(offspring_size)
    crossover_point = np.uint8(offspring_size[1] / 2)
    for k in range(offspring_size[0]):
        parent1_idx = k % parents.shape[0]
        parent2_idx = (k+1) % parents.shape[0]
        offspring[k, 0:crossover_point] = parents[parent1_idx, 0:crossover_point]
        offspring[k, crossover_point:] = parents[parent2_idx, crossover_point:]
    return offspring

def mutate(offspring, mutation_rate, bounds):
    for idx in range(offspring.shape[0]):
        for gene in range(offspring.shape[1]):
            if np.random.rand() < mutation_rate:
                random_value = np.random.uniform(bounds[0], bounds[1])
                offspring[idx, gene] = random_value
    return offspring

# Genetic Algorithm
def genetic_algorithm(objective_function, bounds, pop_size, dimensions, num_generations, num_parents, mutation_rate):
    population = initialize_population(pop_size, dimensions, bounds)
    for generation in range(num_generations):
        fitness = evaluate_population(population, objective_function)
        parents = select_parents(population, fitness, num_parents)
        offspring = crossover(parents, (pop_size - num_parents, dimensions))
        offspring = mutate(offspring, mutation_rate, bounds)
        population[0:num_parents, :] = parents
        population[num_parents:, :] = offspring
        
        print(f"Generation {generation}: Best Fitness = {np.max(fitness)}")
    best_solution = population[np.argmax(fitness)]
    best_fitness = np.max(fitness)
    return best_solution, best_fitness

# Parameters
bounds = [-5.12, 5.12]
pop_size = 20
dimensions = 2
num_generations = 100
num_parents = 10
mutation_rate = 0.1

# Execute the Genetic Algorithm
best_solution, best_fitness = genetic_algorithm(rastrigin, bounds, pop_size, dimensions, num_generations, num_parents, mutation_rate)

# Print the results
print(f"Best solution found: {best_solution}")
print(f"Best fitness value: {best_fitness}")

# Optional: Plotting the final population (for 2D problems)
import matplotlib.pyplot as plt
final_population = initialize_population(pop_size, dimensions, bounds)
fitness = evaluate_population(final_population, rastrigin)
plt.scatter(final_population[:, 0], final_population[:, 1], c=fitness, cmap='viridis')
plt.colorbar(label='Fitness')
plt.title('Final Population Fitness')
plt.xlabel('X1')
plt.ylabel('X2')
plt.show()
