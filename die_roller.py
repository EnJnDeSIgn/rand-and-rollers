import random

# Function to generate binary numbers and convert to specified range
def generate_numbers(group_selection, number_selection, value_ranges):
    final_numbers = []
    roll_count = 30

    for _ in range(roll_count):
        selected_value = group_selection()
        final_numbers.append(number_selection(selected_value, value_ranges))
    
    binary_numbers = [str(num % 2) for num in final_numbers]
    random_number_str = ''.join(binary_numbers)
    current_number = int(random_number_str, 2)
    return current_number

# Roll functions for different dice
def roll_d4():
    groups = ["1111110000", "1010011110", "1100101000", "1001010011", "0110001100", "1110110011", "0101110110", "1100011100", "1000001000", "0111001001"]
    def group_selection(): return random.choice(groups)
    def number_selection(value, ranges): return random.randint(0, 1) if value == '0' else random.randint(2, 3)
    current_number = generate_numbers(group_selection, number_selection, (0, 1, 2, 3))
    return current_number % 4 + 1

def roll_d6():
    groups = ["0101010100", "1000100111", "0100000001", "1101011000", "0011111000", "0100001101", "1001001101", "0110110011", "1101111100", "1011101011"]
    def group_selection(): return random.choice(groups)
    def number_selection(value, ranges): return random.randint(0, 2) if value == '0' else random.randint(3, 5)
    current_number = generate_numbers(group_selection, number_selection, (0, 1, 2, 3, 4, 5))
    return current_number % 6 + 1

def roll_d8():
    groups = ["0000111111", "0111110101", "0100010111", "0000000000", "0001010100", "0011001111", "1100101001", "1010110110", "1101001110", "0111001111"]
    def group_selection(): return random.choice(groups)
    def number_selection(value, ranges): return random.randint(0, 3) if value == '0' else random.randint(4, 7)
    current_number = generate_numbers(group_selection, number_selection, (0, 1, 2, 3, 4, 5, 6, 7))
    return current_number % 8 + 1

# Function to roll a die based on its type
def roll_die(die_type):
    if die_type == 4:
        return roll_d4()
    elif die_type == 6:
        return roll_d6()
    elif die_type == 8:
        return roll_d8()
    else:
        raise ValueError("Unsupported die type")

# Example usage
if __name__ == "__main__":
    die_type = int(input("Enter die type (4, 6, or 8): "))
    result = roll_die(die_type)
    print(f"Random D{die_type}: {result}")