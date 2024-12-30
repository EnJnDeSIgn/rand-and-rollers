import random

shared_groups = [
    "1000000001", "1100100001", "1111111111", "1111101000",
    "0100011100", "0011000000", "1111101110", "0001001011",
    "0100101100", "1011000101", "0110101010", "1001010110",
    "1101000110", "0110110011", "0011100101", "0101101010"
]

def roll_die(die_type):
    if die_type not in [4, 6, 8, 10, 12]:
        raise ValueError("Unsupported die type")

    def group_selection():
        return random.choice(shared_groups)

    def number_selection(value, ranges):
        if value == '0':
            return random.randint(0, ranges[0])
        else:
            return random.randint(ranges[1], ranges[2])

    def generate_numbers(value_ranges):
        final_numbers = []
        roll_count = 30

        for _ in range(roll_count):
            selected_value = group_selection()
            final_numbers.append(number_selection(selected_value, value_ranges))
        
        binary_numbers = [str(num % 2) for num in final_numbers]
        random_number_str = ''.join(binary_numbers)
        current_number = int(random_number_str, 2)
        return current_number

    value_ranges_map = {
        4: (1, 2, 3),
        6: (2, 3, 5),
        8: (3, 4, 7),
        10: (4, 5, 9),
        12: (5, 6, 11)
    }
    
    current_number = generate_numbers(value_ranges_map[die_type])
    return current_number % die_type + 1

# Example usage:
if __name__ == "__main__":
    die_type = int(input("Enter die type (4, 6, 8, 10, or 12): "))
    result = roll_die(die_type)
    print(f"Random D{die_type}: {result}")