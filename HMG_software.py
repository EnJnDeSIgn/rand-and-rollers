import random
import pandas as pd
import numpy as np

def load_data():
    glacier_data = pd.read_csv('simulated_glacier_data.csv')
    tide_data = pd.read_csv('mock_tide_data.csv')
    return glacier_data, tide_data

def normalize_trng(tide_heights):
    min_val = tide_heights.min()
    max_val = tide_heights.max()
    normalized = (tide_heights - min_val) / (max_val - min_val)
    
    # Introduce randomness to normalization
    random_factor = np.random.uniform(0.1, 0.5, size=normalized.shape)  # Introducing random factors between 0.1 and 0.5
    normalized = 0.1 + normalized * (1.0 - 0.1) * random_factor  # Normalize to range [0.1, 1.0] with randomness
    
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

def check_and_regenerate_glacier_data(glacier_data):
    if glacier_data['GlacierSize'].min() <= 0:
        # Regenerate glacier data using GD.py
        exec(open('GD.py').read())
        glacier_data = pd.read_csv('simulated_glacier_data.csv')
    return glacier_data

def main():
    glacier_data, tide_data = load_data()

    # Normalize TRNG values
    tide_data['NormalizedTideHeight'] = normalize_trng(tide_data['TideHeight'])

    # Find random exponents
    glacier_exponents, tide_exponents = find_random_exponents(tide_data['NormalizedTideHeight'], glacier_data, tide_data)
    glacier_data['RandomExponents'] = glacier_exponents
    tide_data['RandomExponents'] = tide_exponents

    # Check and regenerate glacier data if necessary
    glacier_data = check_and_regenerate_glacier_data(glacier_data)

    # Save processed data for further analysis
    glacier_data.to_csv('processed_glacier_data.csv', index=False)
    tide_data.to_csv('processed_tide_data.csv', index=False)

    # Print results in a format similar to the Fortran program
    print("Processed Glacier Data:")
    for _, row in glacier_data.iterrows():
        print(f"GRNG: {row['RandomExponents']:.60e}")

    print("Processed Tide Data:")
    for _, row in tide_data.iterrows():
        print(f"TRNG: {row['RandomExponents']:.60e}")

    total_sum = glacier_data['RandomExponents'].sum() + tide_data['RandomExponents'].sum()
    mean = total_sum / (len(glacier_data) + len(tide_data))
    std_dev = np.sqrt(((glacier_data['RandomExponents'] - mean)**2).sum() + ((tide_data['RandomExponents'] - mean)**2).sum()) / (len(glacier_data) + len(tide_data) - 1)

    print(f"Sum: {total_sum:.64e}")
    print(f"Mean: {mean:.25e}")
    print(f"Std : {std_dev:.64e}")

if __name__ == "__main__":
    main()