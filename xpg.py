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
    Normalize tide heights to a [0.1, 1.0] range with added randomness.
    """
    if column_name not in tide_data.columns:
        raise KeyError(f"Column '{column_name}' not found in tide data.")
    
    min_val = tide_data[column_name].min()
    max_val = tide_data[column_name].max()
    normalized = (tide_data[column_name] - min_val) / (max_val - min_val)
    
    # Apply randomness to normalization
    random_factor = np.random.uniform(0.1, 0.5, size=normalized.shape)
    normalized = 0.1 + normalized * (1.0 - 0.1) * random_factor
    
    # Ensure no value is exactly zero
    mask = normalized == 0.0
    normalized[mask] = np.random.uniform(1e-6, 1e-5, size=np.sum(mask))
    
    tide_data['NormalizedTideHeight'] = normalized
    return tide_data

def generate_binary_pattern(length=90):
    """
    Generate a binary pattern of specified length.
    """
    return ''.join(random.choice(['0', '1']) for _ in range(length))

def assign_data_based_on_pattern(binary_pattern, glacier_data, tide_data, glacier_column='GlacierSize'):
    """
    Use a binary pattern to assign data from glacier decay (0) or normalized tidal heights (1).
    """
    if glacier_column not in glacier_data.columns:
        raise KeyError(f"Column '{glacier_column}' not found in glacier data.")
    
    combined_data = []
    for bit in binary_pattern:
        if bit == '0':
            combined_data.append(random.choice(glacier_data[glacier_column]))
        elif bit == '1':
            combined_data.append(random.choice(tide_data['NormalizedTideHeight']))
    
    return combined_data

def save_processed_data(data, run_id):
    """
    Save processed data to a CSV file for further analysis.
    """
    filename = f'processed_combined_data_run_{run_id}.csv'
    pd.DataFrame(data, columns=['CombinedData']).to_csv(filename, index=False)
    print(f"Data saved to {filename}")

def main():
    """
    Main workflow for generating random numbers using binary patterns and saving processed data.
    """
    runs = random.randint(2, 3)  # Randomly choose between 2 or 3 runs
    print(f"Number of Runs: {runs}")
    
    for run in range(runs):
        glacier_data, tide_data = load_data()
        tide_data = normalize_tide_heights(tide_data, column_name='TideHeight')
        
        # Generate a binary pattern
        binary_pattern = generate_binary_pattern(length=90)
        print(f"Binary Pattern (Run {run + 1}): {binary_pattern}")
        
        # Assign data based on the binary pattern
        combined_data = assign_data_based_on_pattern(
            binary_pattern, glacier_data, tide_data, glacier_column='GlacierSize'
        )
        
        # Save processed data for analysis
        save_processed_data(combined_data, run + 1)
        
        print(f"Run {run + 1} complete. Data saved.")

if __name__ == "__main__":
    main()