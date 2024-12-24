import random
import pandas as pd
import numpy as np
from scipy.stats import norm
import time

def load_data():
    glacier_data = pd.read_csv('simulated_glacier_data.csv')
    tide_data = pd.read_csv('mock_tide_data.csv')
    return glacier_data, tide_data

def normalize_trng(tide_heights):
    min_val = tide_heights.min()
    max_val = tide_heights.max()
    normalized = (tide_heights - min_val) / (max_val - min_val)
    
    # Introduce randomness to normalization
    random_factor = np.random.uniform(0.1, 0.5, size=normalized.shape)
    normalized = 0.0 + normalized * (1.0 - 0.1) * random_factor  # Normalize to range [0.1, 1.0] with randomness
    
    # Ensure no value is exactly zero
    mask = normalized == 0.0
    normalized[mask] = np.random.uniform(1e-6, 1e-5, size=np.sum(mask))
    
    return normalized

def find_random_exponents(normalized_data, glacier_data, tide_data):
    glacier_exponents = np.random.choice(normalized_data, size=len(glacier_data), replace=True)
    tide_exponents = np.random.choice(normalized_data, size=len(tide_data), replace=True)
    
    # Apply new exponent call to the mask three times for each dataset
    for _ in range(3):
        mask_glacier = np.random.choice([True, False], size=len(glacier_data), p=[0.5, 0.5])
        new_glacier_exponents = np.random.choice(normalized_data, size=len(glacier_data), replace=True)
        glacier_exponents[mask_glacier] = new_glacier_exponents[mask_glacier]
        
        mask_tide = np.random.choice([True, False], size=len(tide_data), p=[0.5, 0.5])
        new_tide_exponents = np.random.choice(normalized_data, size=len(tide_data), replace=True)
        tide_exponents[mask_tide] = new_tide_exponents[mask_tide]

    # Ensure no zero or very small values remain by iterating and updating again
    for _ in range(3):
        zero_mask_glacier = glacier_exponents <= 1e-6
        glacier_exponents[zero_mask_glacier] = np.random.random(size=np.sum(zero_mask_glacier))
        
        zero_mask_tide = tide_exponents <= 1e-6
        tide_exponents[zero_mask_tide] = np.random.random(size=np.sum(zero_mask_tide))
    
    # Final step to ensure no persistent values remain
    glacier_exponents += np.random.random(size=len(glacier_exponents)) * 1e-5
    tide_exponents += np.random.random(size=len(tide_exponents)) * 1e-5
    
    return glacier_exponents, tide_exponents

def apply_firing_system(values):
    return values

def check_and_regenerate_glacier_data(glacier_data):
    if glacier_data['GlacierSize'].min() <= 0:
        # Regenerate glacier data using GD.py
        exec(open('GD.py').read())
        glacier_data = pd.read_csv('simulated_glacier_data.csv')
    return glacier_data

def main():
    while True:
        user_input = input("Press '1' to fire the system, '0' to exit: ")
        if user_input == '0':
            print("Exiting program.")
            return
        elif user_input != '1':
            print("Invalid input. Please press '1' to fire the system or '0' to exit.")
            continue

        runs = random.choice([2, 3])  # Randomly choose between 2 or 3 runs
        print(f"Number of Runs: {runs}")

        all_combined_exponents = []
        total_sum_accum = 0.0
        mean_accum = 0.0
        std_dev_accum = 0.0
        
        start_time = time.time()  # Start timing

        for run in range(runs):
            glacier_data, tide_data = load_data()

            # Normalize TRNG values
            tide_data['NormalizedTideHeight'] = normalize_trng(tide_data['TideHeight'])

            # Find random exponents
            glacier_exponents, tide_exponents = find_random_exponents(tide_data['NormalizedTideHeight'], glacier_data, tide_data)
            glacier_data['RandomExponents'] = glacier_exponents
            tide_data['RandomExponents'] = tide_exponents

            # Apply firing system
            glacier_exponents = apply_firing_system(glacier_exponents)
            tide_exponents = apply_firing_system(tide_exponents)

            # Check and regenerate glacier data if necessary
            glacier_data = check_and_regenerate_glacier_data(glacier_data)

            # Save processed data for further analysis
            glacier_data.to_csv(f'processed_glacier_data_run_{run+1}.csv', index=False)
            tide_data.to_csv(f'processed_tide_data_run_{run+1}.csv', index=False)

            # Concatenate exponents for combined sorting
            combined_exponents = np.concatenate((glacier_exponents, tide_exponents))
            all_combined_exponents.append(combined_exponents)

            total_sum = glacier_data['RandomExponents'].sum() + tide_data['RandomExponents'].sum()
            total_sum_accum += total_sum
            
            mean = total_sum / (len(glacier_data) + len(tide_data))
            mean_accum += mean
            
            std_dev = np.sqrt(((glacier_data['RandomExponents'] - mean)**2).sum() + ((tide_data['RandomExponents'] - mean)**2).sum()) / (len(glacier_data) + len(tide_data) - 1)
            std_dev_accum += std_dev

            print(f"Sum (Run {run+1}): {total_sum:.64e}")
            print(f"Mean (Run {run+1}): {mean:.25e}")
            print(f"Std (Run {run+1}): {std_dev:.64e}")
            print("\n")
            
        end_time = time.time()  # End timing
        elapsed_time = end_time - start_time  # Calculate elapsed time
        
        print(f"Elapsed Time for {runs} Runs: {elapsed_time:.30f} seconds")

        # Sort and print all combined exponents from all runs
        all_combined_exponents = np.concatenate(all_combined_exponents)
        sorted_all_combined_exponents = np.sort(all_combined_exponents)

        print("Sorted Exponents from All Runs:")
        for value in sorted_all_combined_exponents:
            print(f"{value:.64e}")

        # Print normalized total_sum (total sum across all runs divided by the number of runs)
        normalized_total_sum = total_sum_accum / runs
        print(f"Normalized Total Sum : {normalized_total_sum:.64e}")

        # Print mean_accum (mean across all runs divided by the number of runs)
        normalized_mean_accum = mean_accum / runs
        print(f"Normalized Mean Accum: {normalized_mean_accum:.25e}")

        # Calculate and print sample standard deviation (std_dev across all runs divided by the number of runs)
        normalized_std_dev = std_dev_accum / runs
        print(f"Normalized Sample Std Dev: {normalized_std_dev:.64e}")

        # Reset the values for the next firing
        all_combined_exponents = []
        #total_sum_accum = 0.0
        #mean_accum = 0.0
        #std_dev_accum = 0.0

if __name__ == "__main__":
    main()