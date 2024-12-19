import random

# Initialize groups
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

def generate_password():
    result_string = ""
    total = 0
    add_or_subtract = random.choice([1, -1]) # Initial random choice for addition or subtraction

    for _ in range(40):
        # Randomly select a group
        selected_group = random.randint(0, 14)
        # Randomly select a number from the chosen group
        selected_number = random.randint(0, 8)

        element = groups[selected_group][selected_number].strip()

        # Check if the element is a number or symbol/letter
        try:
            number = int(element)
            # Element is a number
            total += add_or_subtract * abs(number)
            # Randomly decide whether the next operation will be addition or subtraction
            add_or_subtract = random.choice([1, -1])
        except ValueError:
            # Element is a symbol/letter
            if total != 0:
                result_string += str(abs(total)) # Ensure total is positive
                total = 0
            result_string += element

    # Append any remaining total to the result string
    if total != 0:
        result_string += str(abs(total)) # Ensure total is positive

    return result_string

def main():
    count = 0

    while True:
        count += 1
        all_results = generate_password()

        # Display the current result
        print(f"Results: {all_results}90")
        user_input = input("roll again? (Y/N): ").strip().lower()
        if user_input == 'n':
            break

    print(f"Total iterations: {count}")
    print("Thank you for using the Password roller.")

if __name__ == "__main__":
    main()