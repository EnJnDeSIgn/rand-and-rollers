import subprocess
import random
import re
import numpy as np
import matplotlib.pyplot as plt
from collections import Counter

# ANSI color codes
ANSI_RED = "\033[91m"
ANSI_RESET = "\033[0m"

def call_die_variance_8too():
    """
    Executes die_variance_8too.py and captures its output.
    Returns:
        str: The output from die_variance_8too.py. Returns an empty string on error.
    """
    try:
        result = subprocess.run(
            ['python', 'die_variance_8too.py'],
            capture_output=True, text=True, check=True
        )
        return result.stdout.strip()
    except subprocess.CalledProcessError as e:
        print(f"Error executing die_variance_8too.py: {e}")
        return ""  # Return empty string on error

def remove_ansi_escape_sequences(text):
    """
    Removes ANSI escape sequences from a string.
    """
    ansi_escape = re.compile(r'(?:\x1B[@-_][0-?]*[ -/]*[@-~])')
    return ansi_escape.sub('', text)

def extract_numbers_from_output(output):
    """
    Extracts numbers (0-9) from the output.
    """
    numbers = []
    for line in output.splitlines():
        for char in line:
            if char.isdigit():
                numbers.append(int(char))
    return numbers

def wrap_number(num):
    """
    Wraps a number to the range 0-9 using the modulo operator.
    """
    return num % 10

def main():
    # Get output from the script and remove any ANSI sequences, if present.
    output1 = remove_ansi_escape_sequences(call_die_variance_8too())
    output2 = remove_ansi_escape_sequences(call_die_variance_8too())

    numbers1 = extract_numbers_from_output(output1)
    numbers2 = extract_numbers_from_output(output2)

    if not numbers1 or not numbers2:
        print("Could not find numbers in the output.")
        return

    # Randomly combine numbers (add or subtract) and wrap them to 0-9.
    new_numbers = []
    for n1, n2 in zip(numbers1, numbers2):
        # The two branches below are functionally equivalent,
        # but preserve your randomness.
        if random.choice([True, False]):
            new_number = n1 + n2 if random.choice([True, False]) else abs(n1 - n2)
        else:
            new_number = n2 + n1 if random.choice([True, False]) else abs(n2 - n1)
        new_numbers.append(wrap_number(new_number))

    # Randomly select an index where the number will get red color.
    red_index = random.randint(0, len(new_numbers) - 1)

    # Prepare the result as string, inserting the reset after the red element.
    result = [str(n) for n in new_numbers]
    result[red_index] = ANSI_RED + str(new_numbers[red_index]) + ANSI_RESET

    print("".join(result))

if __name__ == "__main__":
    main()