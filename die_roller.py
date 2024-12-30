import random

shared_groups = [
    "1000000001", "1100100001", "1111111111", "1111101000",
    "0100011100", "0011000000", "1111101110", "0001001011",
    "0100101100", "1011000101", "0110101010", "1001010110",
    "1101000110", "0110110011", "0011100101", "0101101010"
]

def roll_die(die_type):
    if die_type not in [4, 6, 8, 10, 12, 20, 30, 100]:
        raise ValueError("Unsupported die type")

    def group_selection():
        return random.choice(shared_groups)

    def generate_numbers(iterations):
        final_numbers = []

        for _ in range(iterations):
            selected_value = group_selection()
            final_numbers.append(int(random.choice(selected_value)))
        
        binary_numbers = [str(num) for num in final_numbers]
        random_number_str = ''.join(binary_numbers)
        current_number = int(random_number_str, 2)
        return current_number

    # Adjust the number of iterations based on the die type
    iterations_map = {
        4: 30,
        6: 30,
        8: 30,
        10: 30,
        12: 50,
        20: 50,
        30: 70,
        100: 100
    }

    iterations = iterations_map[die_type]
    current_number = generate_numbers(iterations)
    return current_number % die_type + 1

if __name__ == "__main__":
    while True:
        try:
            die_type = int(input("Enter die type (4, 6, 8, 10, 12, 20, 30, or 100): "))

            while True:
                result = roll_die(die_type)
                print(f"Random D{die_type}: {result}")

                user_input = input("Roll again? (Y/N): ").strip().lower()
                if user_input != 'y':
                    break

            change_die = input("Would you like to select a different die? (Y/N): ").strip().lower()
            if change_die != 'y':
                break

        except ValueError:
            print("Invalid die type. Please enter a valid number from the list (4, 6, 8, 10, 12, 20, 30, or 100).")