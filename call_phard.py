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

def generate_custom_binary():
    binary = ''.join(random.choice('01') for _ in range(90))
    patterns = [binary[i:i+10] for i in range(0, 90, 10)]
    return binary, patterns

def main():
    # Call die_variance_8too.py twice and extract numbers
    output1 = call_die_variance_8too()
    output2 = call_die_variance_8too()
    numbers1 = extract_numbers_from_output(output1)
    numbers2 = extract_numbers_from_output(output2)

    if not numbers1 or not numbers2:
        print("Could not find numbers in the output.")
        return

    # Randomly add or subtract numbers
    new_numbers = []
    for n1, n2 in zip(numbers1, numbers2):
        if random.choice([True, False]):
            new_numbers.append(n1 + n2)
        else:
            new_numbers.append(abs(n1 - n2))

    # Print the new numbers with a new red starting location
    print(f"New Numbers: {new_numbers}")
    print(f"Output from first call:\n{output1}")
    print(f"Output from second call:\n{output2}")

if __name__ == "__main__":
    main()