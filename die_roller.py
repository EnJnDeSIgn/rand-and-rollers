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

    def generate_numbers():
        final_numbers = []
        roll_count = 30

        for _ in range(roll_count):
            selected_value = group_selection()
            final_numbers.append(int(random.choice(selected_value)))
        
        binary_numbers = [str(num) for num in final_numbers]
        random_number_str = ''.join(binary_numbers)
        current_number = int(random_number_str, 2)
        return current_number

    current_number = generate_numbers()
    return current_number % die_type + 1

if __name__ == "__main__":
    die_type = int(input("Enter die type (4, 6, 8, 10, 12, 20, 30, or 100): "))

    while True:
        result = roll_die(die_type)
        print(f"Random D{die_type}: {result}")
        
        user_input = input("Roll again? (Y/N): ").strip().lower()
        if user_input != 'y':
            change_die = input("Would you like to select a different die? (Y/N): ").strip().lower()
            if change_die == 'y':
                die_type = int(input("Enter die type (4, 6, 8, 10, 12, 20, 30, or 100): "))
            else:
                break