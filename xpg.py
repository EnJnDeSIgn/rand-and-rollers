import random
import pandas as pd
import numpy as np

def load_data():
    """
    Load glacier decay and tidal height data.
    """
    glacier_data = pd.read_csv('simulated_glacier_data.csv')
    tide_data = pd.read_csv('mock_tide_data.csv')
    return glacier_data, tide_data

def normalize_tide_heights(tide_data, column_name='TideHeight'):
    """
    Normalize tide heights to a [0.1, 1.0] range.
    """
    if column_name not in tide_data.columns:
        raise KeyError(f"Column '{column_name}' not found in tide data.")
    
    min_val = tide_data[column_name].min()
    max_val = tide_data[column_name].max()
    normalized = (tide_data[column_name] - min_val) / (max_val - min_val)
    
    # Scale to the range [0.1, 1.0]
    normalized = 0.1 + normalized * (1.0 - 0.1)
    
    tide_data['NormalizedTideHeight'] = normalized
    return tide_data

def generate_binary_pattern(length=90):
    """
    Generate a random binary pattern of specified length.
    """
    return ''.join(random.choice(['0', '1']) for _ in range(length))

def generate_random_exponent():
    """
    Generate a random exponent to add to a data value.
    """
    return random.uniform(0.1, 2.0)  # Random number between 0.1 and 2.0

def assign_data_with_exponent(binary_pattern, glacier_data, tide_data, glacier_column='GlacierSize'):
    """
    Use a binary pattern to assign data from glacier decay (0) or normalized tidal heights (1),
    and add a random exponent to the selected value.
    """
    if glacier_column not in glacier_data.columns:
        raise KeyError(f"Column '{glacier_column}' not found in glacier data.")
    
    combined_data = []
    for bit in binary_pattern:
        if bit == '0':
            value = random.choice(glacier_data[glacier_column])
        elif bit == '1':
            value = random.choice(tide_data['NormalizedTideHeight'])
        else:
            raise ValueError(f"Unexpected binary value: {bit}")
        
        # Add a random exponent to the value
        random_exponent = generate_random_exponent()
        combined_value = value + random_exponent
        combined_data.append(combined_value)
    
    return combined_data

def hmg_simulation(glacier_data, tide_data, glacier_column='GlacierSize', runs=2):
    """
    Simulate a Heavy Machine Gun (HMG)-like behavior by running 2-3 times
    and sorting the final exponents.
    """
    all_exponents = []
    
    for run in range(runs):
        # Generate a binary pattern
        binary_pattern = generate_binary_pattern(length=90)
        print(f"Binary Pattern (Run {run + 1}): {binary_pattern}")
        
        # Assign data and add random exponents
        combined_data = assign_data_with_exponent(
            binary_pattern, glacier_data, tide_data, glacier_column=glacier_column
        )
        print(f"Generated Exponents (Run {run + 1}): {combined_data}")
        
        # Add to the overall list of exponents
        all_exponents.extend(combined_data)
    
    # Sort all exponents from lowest to highest
    all_exponents.sort()
    print(f"Final Sorted Exponents: {all_exponents}")
    
    return all_exponents

def main():
    """
    Main workflow for generating HMG-like random exponents using binary patterns.
    """
    glacier_data, tide_data = load_data()
    tide_data = normalize_tide_heights(tide_data, column_name='TideHeight')
    
    # Simulate HMG behavior for 2-3 runs
    runs = random.randint(2, 3)
    print(f"Number of Runs: {runs}")
    sorted_exponents = hmg_simulation(glacier_data, tide_data, glacier_column='GlacierSize', runs=runs)
    
    # Save the sorted exponents to a file
    pd.DataFrame(sorted_exponents, columns=['SortedExponents']).to_csv('final_sorted_exponents.csv', index=False)
    print("Sorted exponents saved to 'final_sorted_exponents.csv'.")

if __name__ == "__main__":
    main()