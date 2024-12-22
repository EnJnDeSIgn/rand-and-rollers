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
    normalized = 0.1 + normalized * (1.0 - 0.1)  # Normalize to range [0.1, 1.0]
    return normalized

def find_random_exponents(normalized_data, glacier_data):
    exponents = np.random.choice(normalized_data, size=len(glacier_data), replace=True)
    return exponents

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
    exponents = find_random_exponents(tide_data['NormalizedTideHeight'], glacier_data)
    glacier_data['RandomExponents'] = exponents

    # Check and regenerate glacier data if necessary
    glacier_data = check_and_regenerate_glacier_data(glacier_data)

    # Save processed data for further analysis
    glacier_data.to_csv('processed_glacier_data.csv', index=False)
    tide_data.to_csv('processed_tide_data.csv', index=False)

    #print("HMG software execution completed successfully.")
    #print("Processed data saved to 'processed_glacier_data.csv' and 'processed_tide_data.csv'.")

    # Print results in a format similar to the Fortran program
    print("Processed Glacier Data:")
    for _, row in glacier_data.iterrows():
        print(f"GRNG: {row['RandomExponents']:.60e}")

    print("Processed Tide Data:")
    for _, row in tide_data.iterrows():
        print(f"TRNG: {row['NormalizedTideHeight']:.60e}")

    total_sum = glacier_data['RandomExponents'].sum() + tide_data['NormalizedTideHeight'].sum()
    mean = total_sum / (len(glacier_data) + len(tide_data))
    std_dev = np.sqrt(((glacier_data['RandomExponents'] - mean)**2).sum() + ((tide_data['NormalizedTideHeight'] - mean)**2).sum()) / (len(glacier_data) + len(tide_data) - 1)

    print(f"Sum: {total_sum:.64e}")
    print(f"Mean: {mean:.25e}")
    print(f"Std : {std_dev:.64e}")
    #print("HMG software execution completed successfully.")
    #print("Processed data saved to 'processed_glacier_data.csv' and 'processed_tide_data.csv'.")

if __name__ == "__main__":
    main()