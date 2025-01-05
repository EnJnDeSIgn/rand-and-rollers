import numpy as np
import random

def powerset(set, n):
    total_subsets = 2**n
    subsets = np.zeros((total_subsets, n), dtype=int)
    for subset in range(total_subsets):
        for i in range(n):
            if subset & (1 << i):
                subsets[subset, i] = set[i]
    return subsets

def main():
    np.random.seed()
    roll_count = 30
    num_iterations = 25
    total_sum = 0.0
    carry_over = 0.0
    digit_count = np.zeros(10, dtype=int)
    final_numbers = np.zeros(30, dtype=int)
    most_frequent_digits = ""
    run_totals = np.zeros(num_iterations, dtype=float)
    groups = np.array([
        ["0", "0", "0", "0", "1", "1", "1", "1", "1", "1"],
        ["0", "1", "1", "1", "1", "1", "1", "0", "1", "0"],
        ["0", "1", "0", "0", "0", "1", "0", "1", "1", "1"],
        ["0", "1", "1", "1", "0", "0", "1", "1", "1", "1"],
        ["0", "0", "0", "1", "0", "1", "0", "1", "0", "0"],
        ["0", "0", "1", "1", "0", "0", "0", "1", "1", "1"],
        ["1", "1", "0", "0", "1", "0", "1", "0", "0", "1"],
        ["1", "0", "1", "0", "1", "1", "0", "1", "1", "0"],
        ["1", "1", "0", "1", "0", "0", "1", "1", "1", "0"],
        ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"]
    ])

    n = 10
    base_set = np.arange(1, n + 1)
    subsets = powerset(base_set, n)
    total_subsets = subsets.shape[0]
    
    seed = [int(random.random() * total_subsets) for _ in range(n)]
    np.random.seed(seed)
    
    for j in range(num_iterations):
        random_number_str = ""
        count = 0
        for i in range(roll_count):
            selected_group = int(random.random() * total_subsets)
            if selected_group <= total_subsets // 2:
                selected_group %= 5
            else:
                selected_group = selected_group % 5 + 5
            selected_number = int(random.random() * total_subsets)
            if selected_number <= total_subsets // 2:
                selected_number %= 5
            else:
                selected_number = selected_number % 5 + 5
            selected_numbers = groups[selected_group, selected_number]
            if selected_numbers == "0":
                final_numbers[i] = int(random.random() * 5)
            else:
                final_numbers[i] = int(random.random() * 5) + 5
            random_number_str += str(final_numbers[i])
        
        print(random_number_str)  # Print each generated number
        
        current_number = float(random_number_str)
        carry_over += current_number
        total_sum += carry_over
        carry_over = 0.0
        run_totals[j] = total_sum
        digit_count += np.bincount(final_numbers, minlength=10)
    
    max_value = run_totals.max()
    if max_value > 0:
        normalized_run_totals = run_totals / max_value
    else:
        normalized_run_totals = run_totals
    mean = normalized_run_totals.mean()
    std_dev = normalized_run_totals.std(ddof=1)

    max_digit_count = digit_count.max()
    for k in range(10):
        if digit_count[k] == max_digit_count:
            most_frequent_digits += str(k)
    
    selected_place = int(random.random() * 750) + 1
    line_index = (selected_place - 1) // 30 + 1
    position_index = (selected_place - 1) % 30
    random_select_value = final_numbers[position_index]
    random_select = random_select_value % 10

    random_val0 = random.random() * 2
    if random_val0 == 0:
        exponent = total_sum / (10 ** int(random.random() * 32))
    else:
        exponent = (10 ** int(random.random() * 32)) / total_sum

    print(f"Total sum (in scientific notation): {total_sum:.10e}")
    print(f"Mean: {mean}")
    print(f"Standard Deviation: {std_dev}")
    print(f"Most Frequent Digit(s): {most_frequent_digits}")
    print(f"Random Select: {random_select}")
    print(f"Random Exponent: {exponent:.25e}")

if __name__ == "__main__":
    main()