import subprocess
import random

def call_die_variance_8too():
    result = subprocess.run(['python', 'die_variance_8too.py'], capture_output=True, text=True)
    return result.stdout.strip()

def extract_numbers_from_output(output):
    numbers = []
    for line in output.split('\n'):
        if 'Binary' in line:
            # Extract numbers from 0 to 9 from the binary pattern
            numbers.extend(int(char) for char in line if char.isdigit())
    return numbers

def wrap_number(num):
    return num % 10

def main():
    # Call die_variance_8too.py twice and extract numbers
    output1 = call_die_variance_8too()
    output2 = call_die_variance_8too()
    numbers1 = extract_numbers_from_output(output1)
    numbers2 = extract_numbers_from_output(output2)

    if not numbers1 or not numbers2:
        print("Could not find numbers in the output.")
        return

    # Randomly add or subtract numbers and wrap them to 0-9 with increased variability
    new_numbers = []
    for n1, n2 in zip(numbers1, numbers2):
        if random.choice([True, False]):
            if random.choice([True, False]):
                new_number = n1 + n2
            else:
                new_number = abs(n1 - n2)
        else:
            if random.choice([True, False]):
                new_number = n2 + n1
            else:
                new_number = abs(n2 - n1)
        new_numbers.append(wrap_number(new_number))

    # Select a random red starting location
    red_index = random.randint(0, len(new_numbers) - 1)

    # Print the final new numbers with a red starting location highlighted
    new_numbers_with_red = [
        f'\033[91m{num}\033[0m' if i == red_index else str(num)
        for i, num in enumerate(new_numbers)
    ]
    print(', '.join(new_numbers_with_red))

if __name__ == "__main__":
    main()