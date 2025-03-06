import subprocess
import random

def call_die_variance_8too():
    result = subprocess.run(['python', 'die_variance_8too.py'], capture_output=True, text=True)
    return result.stdout.strip()

def get_red_starting_location(output):
    # Assuming the red starting location is printed in the output, extract it.
    # Note: You might need to adjust this based on the actual output format of die_variance8too.py
    # Example: If the output contains "Red starting location: <number>"
    for line in output.split('\n'):
        if 'Red starting location' in line:
            return int(line.split(':')[-1].strip())
    return None

def main():
    # Call die_variance8too.py twice and get red starting locations
    output1 = call_die_variance_8too()
    output2 = call_die_variance_8too()
    red_start1 = get_red_starting_location(output1)
    red_start2 = get_red_starting_location(output2)

    if red_start1 is None or red_start2 is None:
        print("Could not find red starting locations in the output.")
        return

    # Randomly add or subtract one from the other
    if random.choice([True, False]):
        new_red_start = red_start1 + red_start2
    else:
        new_red_start = abs(red_start1 - red_start2)

    # Print the new numbers with the new red starting location
    print(f"New Red Starting Location: {new_red_start}")
    print(f"Output from first call:\n{output1}")
    print(f"Output from second call:\n{output2}")

if __name__ == "__main__":
    main()