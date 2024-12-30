import random

def roll_d4():
    groups = [
        ["1", "1", "1", "1", "1", "1", "0", "0", "0", "0"],
        ["1", "0", "1", "0", "0", "1", "1", "1", "1", "0"],
        ["1", "1", "0", "0", "1", "0", "1", "0", "0", "0"],
        ["1", "0", "0", "1", "0", "1", "0", "0", "1", "1"],
        ["0", "1", "1", "0", "0", "0", "1", "1", "0", "0"],
        ["1", "1", "1", "0", "1", "1", "1", "0", "0", "1"],
        ["0", "1", "0", "1", "1", "1", "0", "1", "1", "0"],
        ["1", "1", "0", "0", "0", "1", "1", "1", "0", "0"],
        ["1", "0", "0", "0", "0", "0", "0", "1", "0", "0"],
        ["0", "1", "1", "1", "0", "0", "1", "0", "0", "1"]
    ]

    final_numbers = []
    roll_count = 30

    for _ in range(30):
        selected_group = random.choice(range(10))
        selected_number = random.choice(range(10))
        selected_value = int(groups[selected_group][selected_number])
        
        if selected_value == 0:
            final_numbers.append(random.randint(0, 1))
        else:
            final_numbers.append(random.randint(2, 3))
    
    binary_numbers = [str(num % 2) for num in final_numbers]
    random_number_str = ''.join(binary_numbers)
    
    current_number = int(random_number_str, 2)
    d4 = current_number % 4 + 1
    return d4

def roll_d6():
    groups = [
        ["0", "1", "0", "1", "0", "1", "0", "1", "0", "0"],
        ["1", "0", "0", "0", "1", "0", "0", "1", "1", "1"],
        ["0", "1", "0", "0", "0", "0", "0", "0", "0", "1"],
        ["1", "1", "0", "1", "0", "1", "1", "0", "0", "0"],
        ["0", "0", "1", "1", "1", "1", "1", "0", "0", "0"],
        ["0", "1", "0", "0", "0", "0", "0", "1", "1", "0"],
        ["1", "0", "0", "1", "0", "0", "1", "1", "0", "1"],
        ["0", "1", "1", "0", "1", "1", "0", "0", "1", "1"],
        ["1", "1", "0", "1", "1", "1", "1", "1", "1", "0"],
        ["1", "0", "1", "1", "1", "0", "1", "0", "1", "1"]
    ]

    final_numbers = []
    roll_count = 30

    for _ in range(30):
        selected_group = random.choice(range(10))
        selected_number = random.choice(range(10))
        selected_value = int(groups[selected_group][selected_number])
        
        if selected_value == 0:
            final_numbers.append(random.randint(0, 2))
        else:
            final_numbers.append(random.randint(3, 5))
    
    binary_numbers = [str(num % 2) for num in final_numbers]
    random_number_str = ''.join(binary_numbers)
    
    current_number = int(random_number_str, 2)
    d6 = current_number % 6 + 1
    return d6

def roll_die(die_type):
    if die_type == 4:
        return roll_d4()
    elif die_type == 6:
        return roll_d6()
    else:
        raise ValueError("Unsupported die type")

# Example usage:
if __name__ == "__main__":
    die_type = int(input("Enter die type (4 or 6): "))
    result = roll_die(die_type)
    print(f"Random D{die_type}: {result}")