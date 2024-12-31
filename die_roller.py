import random

shared_groups = [
    "1000000001", "1100100001", "0101111001", "1111101000", "0000110001", "0010001100",
    "0100011100", "0011000000", "1111101110", "0001001011", "1110011011", "0101101011",
    "0000011110", "1011000101", "0110101010", "1001010110", "1010011110", "0111010001",
    "1011110011", "0110110011", "0011100101", "0101101010", "0001010010", "0010100001",
    "0110111010", "1011011010", "0111111111", "0111110010", "0001110111", "1011011111",
    "1001011111", "0000110011", "0100111011", "1011111010", "1011110000", "1000000111",
    "0010100110", "0100000010", "1100011000", "0111011001", "1101000101", "1000100110",
    "1000000110", "0111101111", "1111000100", "0000001100", "0110001101", "1010000110",
    "0110101011", "0011100110", "0010001000", "1010101110", "1110111111", "0101011000",
    "1000111101", "0011000101", "1111001001", "0011000010", "0011110110", "0111100011",
    "1110110001", "0010000011", "1011110110", "1001110011", "1101011000", "1011011100",
    "0011111011", "0111100001", "0000010010", "1010101011", "0101111000", "1101101010",
    "1111111100", "0100110010", "0101011010", "1111100011", "0111111010", "1011010100",
    "0100101100", "0111001001", "1111010010", "0110001110", "1111111011", "1101000010",
    "1001111011", "1101010000", "0001110110", "1101010101", "0001101100", "0011010011",
    "1101110010", "0000110000", "0111111011", "1010011001", "1101101101", "0110010110",
    "0011001101", "0010101011", "1101000110", "1011010101", "1010000101", "0010111010",
    "0100011110", "0101100001", "0100100001", "1100110011", "1000000000", "0100001111"
]

def roll_die(die_type):
    if die_type not in [4, 6, 8, 10, 12, 20, 30, 100]:
        raise ValueError("Unsupported die type")

    def group_selection():
        return random.choice(shared_groups)

    def generate_numbers(iterations, roll_count):
        final_numbers = []

        for _ in range(iterations):
            selected_value = group_selection()
            for _ in range(roll_count):
                final_numbers.append(int(random.choice(selected_value)))
        
        binary_numbers = [str(num) for num in final_numbers]
        random_number_str = ''.join(binary_numbers)
        current_number = int(random_number_str, 2)
        return current_number

    # Adjust the number of iterations and roll count based on the die type
    config_map = {
        4: (30, 30),
        6: (30, 30),
        8: (30, 30),
        10: (100, 30),
        12: (250, 50),
        20: (500, 50),
        30: (750, 50),
        100: (1000, 50)
    }

    iterations, roll_count = config_map[die_type]
    current_number = generate_numbers(iterations, roll_count)
    return current_number % die_type + 1

if __name__ == "__main__":
    while True:
        try:
            die_type = int(input("Enter die type (4, 6, 8, 10, 12, 20, 30, or 100): "))

            while True:
                result = roll_die(die_type)
                print(f"Random D{die_type}: {result}")

                user_input = input("Roll again? (Y/N): ").strip().lower()
                if user_input == 'n':
                    break
                elif user_input != 'y':
                    print("Invalid input. Please enter 'Y' to roll again or 'N' to stop.")
                    continue

            change_die = input("Would you like to select a different die? (Y/N): ").strip().lower()
            if change_die == 'n':
                break
            elif change_die != 'y':
                print("Invalid input. Please enter 'Y' to select a different die or 'N' to stop.")
                continue

        except ValueError:
            print("Invalid die type. Please enter a valid number from the list (4, 6, 8, 10, 12, 20, 30, or 100).")