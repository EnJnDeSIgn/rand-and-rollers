import random

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
        
    # Randomly generate the rest of the maze with a balanced chance of open paths
    for i in range(size):
        for j in range(size):
            if maze[i][j] != 2 and not (i == 0 and j == 0):
                maze[i][j] = 0 if random.random() > 0.5 else 1  # Balanced wall probability

    # Print the exits for verification
    print("Exits:", exits)
#def generate_maze(size):
#    maze = [[1 for _ in range(size)] for _ in range(size)]
    
    # Initialize the maze with an entry and an exit
#    maze[0][0] = 0
#    maze[size-1][size-1] = 2

    # Carve a guaranteed path from (0,0) to (size-1,size-1)
#    for i in range(size):
#        maze[i][0] = 0
#    for j in range(size):
#        maze[size-1][j] = 0

    # Randomly generate the rest of the maze
    #for i in range(size):
    #    for j in range(size):
    #        if maze[i][j] != 2 and not (i == size-1 and j == 0) and not (i == 0 and j == size-1):
    #            maze[i][j] = 0 if random.random() > 0.3 else 1

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

def get_user_guess():
    while True:
        try:
            guess = int(input("Enter your guess (0 or 1): "))
            if guess in [0, 1]:
                return guess
            else:
                print("Invalid input. Please enter 0 or 1.")
        except ValueError:
            print("Invalid input. Please enter 0 or 1.")

def explore_maze(maze, x, y):
    if x < 0 or x >= len(maze) or y < 0 or y >= len(maze):
        return "Alas, the walls closed in. But Aldor still dreams."
    if maze[x][y] == 2:
        return "Aldor emerged into the sunlight. Freedom!"
    if maze[x][y] == 1:
        return "Alas, the walls closed in. But Aldor still dreams."

    maze[x][y] = 1  # Mark this path as visited

    print("Keep exploring...")
    display_maze(maze)

    next_choice = get_user_guess()
    if next_choice == 0 and x + 1 < len(maze):
        return explore_maze(maze, x + 1, y)
    elif next_choice == 1 and y + 1 < len(maze):
        return explore_maze(maze, x, y + 1)
    else:
        return "Alas, the walls closed in. But Aldor still dreams."

def main():
    size = int(input("Enter the size of the maze (e.g., 5 for a 5x5 maze): "))
    maze = generate_maze(size)
    
    print("Welcome to the random maze generator EnJnDeSIgn2024!")
    print("Can you find your way out of this digital maze?")
    print("By Ian J Norris ian.enjn@gmail.com.")
    
    display_maze(maze)

    print("Press 0 or 1 and Enter to start exploring the maze...")
    input()

    result = explore_maze(maze, 0, 0)
    print(result)

if __name__ == "__main__":
    main()