import random
import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import norm

groups = [
    ["i", "+", "5", "8", "a", "p", "4", "r", "/"],
    ["h", "J", "3", "%", "H", "|", "7", "t", "="],
    ["@", "x", "!", "&", "I", "9", "7", "#", "3"],
    ["L", "2", "A", "3", "/", "c", "R", "0", "y"],
    ["9", "e", "=", "V", "j", "s", "u", "?", "0"],
    ["7", ".", ".", "1", "P", "4", "z", "U", "-"],
    ["6", "5", "K", "T", "v", "n", "4", "M", "<"],
    ["2", "N", "5", "9", "d", "!", "3", "W", "b"],
    ["9", "6", "&", ",", "C", "X", ",", "B", "#"],
    ["$", "7", "8", "8", "1", "S", "9", "*", "o"],
    ["6", "Z", "?", "7", "6", "5", "1", "8", "2"],
    ["2", "w", "8", "%", "G", "F", "E", "0", "k"],
    ["O", "1", "4", "4", "*", "q", "3", ">", "2"],
    ["5", "l", "m", "|", "-", "1", "6", "0", "Y"],
    ["Q", "0", "+", ">", "D", "g", "@", "<", "f"]
]

def generate_maze(size):
    maze = [[1 for _ in range(size)] for _ in range(size)]
    
    # Initialize the maze with an entry and multiple exits
    maze[0][0] = 0
    num_exits = max(size // 2, 2)  # Ensure at least 2 exits
    exits = [(random.randint(0, size-1), random.randint(0, size-1)) for _ in range(num_exits)]
    exits.append((size-1, size-1))  # Ensure at least one exit at the bottom right

    for (i, j) in exits:
        maze[i][j] = 2  # Exits

    # Print the exits for verification
    print("Exits:", exits)

    # Randomly generate the rest of the maze with a balanced chance of open paths
    for i in range(size):
        for j in range(size):
            if maze[i][j] != 2 and not (i == 0 and j == 0):
                maze[i][j] = 0 if random.random() > 0.5 else 1  # Balanced wall probability

    return maze

def display_maze(maze):
    for row in maze:
        print(' '.join(convert_to_character(cell) for cell in row))
    print()

def convert_to_character(value):
    if value == 0:
        return random.choice(random.choice(groups))  # Pick a random character from the table
    elif value == 1:
        return random.choice(random.choice(groups))  # Pick a random character from the table
    return str(value)

def genetic_explore(maze, population_size, generations):
    size = len(maze)
    seeker_population = [generate_random_path(size) for _ in range(population_size)]   #population 9
    best_path = None
    #best_steps = float(1e+25)
    best_steps = float('inf')
    steps_list = []
    final_population = []
    failed_attempts = 0.0 # Initialize the failed attempts counter

    for gen in range(generations):
        seeker_population = sorted(seeker_population, key=lambda path: evaluate_path(maze, path))
        if evaluate_path(maze, seeker_population[0]) != float('inf'):
            best_path = seeker_population[0]
            best_steps = evaluate_path(maze, best_path)
        else:
            failed_attempts += 1 #* float(best_steps if best_steps != 0 else 1)
        steps_list.append(best_steps)
        final_population = seeker_population.copy()  # Keep the last generation for plotting
        new_population = seeker_population[:population_size // 2]
        while len(new_population) < population_size:
            parent1, parent2 = random.sample(seeker_population[:population_size // 2], 2)
            child = crossover(parent1, parent2)
            child = mutate(child, size)
            child = repair_path(maze, child)  # Repair path
            new_population.append(child)
            seeker_population = new_population
        
        # Logging generation and best steps with normalization check 
        if best_steps == float('inf'):
            #best_steps = 1e6
            print(f"Generation {gen+1}: Best Steps = {best_steps} Alas, the walls closed in. But Aldor still dreams")
        elif best_steps < 0: 
            print(f"Generation {gen+1}: Best Steps = {best_steps} 0 (Too small, normalized)") 
            best_steps = 0.0 
        else:
            # Ensure `best_steps` is a reasonable large number, not exceeding some limit like 10^6
            #if best_steps > 1e6:
            #    best_steps = float(random.random())
            #    print(f"Generation {gen+1}: Best Steps = {1e25:.25f} (normalized)")
            #    best_steps = 1e6
                #steps_list = [best_steps]
           # else:
                # Logging generation and best steps
            print(f"Generation {gen+1}: Best Steps = {best_steps}")

    return best_path, best_steps, steps_list, final_population, failed_attempts

def generate_random_path(size):
    return [(random.choice([-1, 0, 1]), random.choice([-1, 0, 1])) for _ in range(size * 2)]  # Longer paths

def evaluate_path(maze, path):
    steps = 0
    x, y = 0, 0
    for dx, dy in path:
        x, y = x + dx, y + dy
        if x < 0 or x >= len(maze) or y < 0 or y >= len(maze) or maze[x][y] == 1:
            return float('inf')
        if maze[x][y] == 2:
            return steps
        steps += random.random()
    # Ensure `steps` is a long decimal within the desired range
    if 3 <= steps <= 250:
        return steps
    else:
        # Reset steps to `float('inf')` if the path length is invalid
        return float('inf')

#def evaluate_path(maze, path):
#    steps = 0
#    x, y = 0, 0
#    for dx, dy in path:
#        x, y = x + dx, y + dy
#        if x < 0 or x >= len(maze) or y < 0 or y >= len(maze) or maze[x][y] == 1:
#            return float('inf')
#        if maze[x][y] == 2:
#            return steps
#        steps += random.random()
#    return steps if 3 <= steps <= 2000 else float('inf')

def repair_path(maze, path):
    # Ensure the path stays within bounds and avoids walls
    repaired_path = []
    x, y = 0, 0
    for dx, dy in path:
        new_x, new_y = x + dx, y + dy
        if 0 <= new_x < len(maze) and 0 <= new_y < len(maze) and maze[new_x][new_y] != 1:
            repaired_path.append((dx, dy))
            x, y = new_x, new_y
        else:
            repaired_path.append((0, 0))  # Stay in place if the move is invalid
    return repaired_path

def crossover(parent1, parent2):
    crossover_point = random.randint(0, len(parent1) - 1)
    return parent1[:crossover_point] + parent2[crossover_point:]

def mutate(path, size):
    mutation_rate = 0.1
    new_path = []
    for dx, dy in path:
        if random.random() < mutation_rate:
            new_path.append((random.choice([-1, 0, 1]), random.choice([-1, 0, 1])))
        else:
            new_path.append((dx, dy))
    return new_path

def plot_steps_and_fitness(steps_list, final_population, fitness_list):
    plt.figure(figsize=(14, 6))

    # Plot steps taken per generation
    plt.subplot(1, 2, 1)
    plt.plot(range(len(steps_list)), steps_list, color='b', marker='o', alpha=0.6)
    plt.xlabel('Generation')
    plt.ylabel('Best Steps Taken')
    plt.title('Best Steps Taken per Generation in Genetic Algorithm')

    # Plot final population with fitness color coding
    x_points = []
    y_points = []
    colors = []
    for i, path in enumerate(final_population):
        x, y = 0, 0
        for dx, dy in path:
            x += dx
            y += dy
            x_points.append(abs(x))
            y_points.append(abs(y))
            colors.append(fitness_list[i])

    plt.subplot(1, 2, 2)
    if x_points and y_points:
        sc = plt.scatter(x_points, y_points, c=colors, cmap='viridis', alpha=0.6)
        plt.colorbar(sc, label='Fitness')
        plt.xlabel('X Coordinate')
        plt.ylabel('Y Coordinate')
        plt.title('Final Population Paths with Fitness Color Coding')
        # Adjust the aspect ratio to match the data
        x_range = max(x_points) - min(x_points)
        y_range = max(y_points) - min(y_points)
        if y_range == 0:
           y_range = 1.0e25 # Avoid division by zero
        elif x_range == 0:
           x_range = 1.0e25
        plt.gca().set_aspect(aspect=x_range/y_range, adjustable='box')
    else:
        plt.text(0.5, 0.5, 'Alas, the walls closed in. But Aldor still dreams', horizontalalignment='center', verticalalignment='center', transform=plt.gca().transAxes)
    plt.show()

def main():
    size = int(input("Enter the size of the maze (e.g., 5 for a 5x5 maze): "))
    maze = generate_maze(size)
    
    display_maze(maze)

    population_size = 100
    generations = 200
    best_path, best_steps, steps_list, final_population, total_failed_attempts = None, None, [], [], 0

    # Perform multiple iterations for better convergence
    for iteration in range(5):
        path, steps, steps_per_iter, final_pop, failed_attempts = genetic_explore(maze, population_size, generations)
        if path is not None and steps < float('inf'):
            if best_path is None or steps < best_steps:
                best_path = path
                best_steps = steps
                steps_list.extend(steps_per_iter)
                final_population = final_pop
        total_failed_attempts += failed_attempts # Increment total failed attempts
    
    # Calculate total steps
    total_steps = sum(step for step in steps_list if step != float('inf'))

    # Calculate mean and standard deviation of steps
    valid_steps = [step for step in steps_list if step != float('inf')]
    if valid_steps:
        mean_steps = np.mean(valid_steps)
        std_dev_steps = np.std(valid_steps)
    else:
        mean_steps = 0
        std_dev_steps = 0

    # Check if no valid path was found
    if best_steps == float('inf') or best_steps == 0:
        print("Alas, the walls closed in. But Aldor still dreams")
    else:
        print(f"Best path found takes {best_steps} steps.")
        print(f"Total steps taken: {total_steps:.25f}")
        print(f"Mean steps taken: {mean_steps:.25f}")
        print(f"Standard deviation of steps: {std_dev_steps:.25f}")

    if best_path is not None:
        print("Best path found:")
        for step in best_path[:10]:  # Print the first 10 steps to keep it concise
            print(step)
    
    # Calculate fitness for final population
    fitness_list = [evaluate_path(maze, path) for path in final_population]

    # Plot steps and final population with fitness
    plot_steps_and_fitness(steps_list, final_population, fitness_list)
    
    total_failed_attempts = total_failed_attempts / std_dev_steps
    
    print(f"Total failed attempts: {total_failed_attempts:.25e}") # Print the total failed attempts
    print("Can Algor find his way out of this digital maze?")
    print("Thank you for using the Maze explorer EnJnDeSIgn2024.")

if __name__ == "__main__":
    main()