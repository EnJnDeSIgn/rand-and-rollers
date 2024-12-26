import random
import pandas as pd
import numpy as np
import scipy.stats as stats
import matplotlib.pyplot as plt
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

def plot_bell_curve(data):
    # Ensure we have data to plot
    if len(data) == 0:
        print("No data available to plot the bell curve.")
        return

    # Calculate mean (mu)
    mu = np.mean(data)

    # Calculate standard deviation (sigma)
    sigma = np.std(data, ddof=1)

    # Output mean and standard deviation
    print(f"Mean (mu): {mu:.30e}")
    print(f"Standard Deviation (sigma): {sigma:.64e}")

    # Calculate and output pdf for each data point
    for x in data:
        pdf = stats.norm.pdf(x, mu, sigma)
        #print(f"x = {x}, pdf value = {pdf:.64e}")

    # Plot the bell curve (normal distribution)
    x_values = np.linspace(min(data) - 10, max(data) + 10, 100)
    y_values = stats.norm.pdf(x_values, mu, sigma)
    
    plt.plot(x_values, y_values, label='Normal Distribution')
    plt.scatter(data, stats.norm.pdf(data, mu, sigma), color='red', label='Data Points')
    plt.xlabel('Data Points')
    plt.ylabel('Probability Density')
    plt.title('Bell Curve (Normal Distribution)')
    plt.legend()
    plt.grid(True)
    plt.show()

def main_process():
    all_combined_exponents = []  # Initialize as a list

    while True:
        user_input = input("Press '1' to fire the system, '0' to exit: ")
        if user_input == '0':
            print("Exiting program.")
            break
        elif user_input != '1':
            print("Invalid input. Please press '1' to fire the system or '0' to exit.")
            continue

        runs = random.choice([2, 3])  # Randomly choose between 2 or 3 runs
        print(f"Number of Runs: {runs}")

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
            all_combined_exponents.append(combined_exponents.tolist())  # Convert to list before appending

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

    return all_combined_exponents

def main():
    # Call the main process to retrieve data
    all_combined_exponents = main_process()

    # Ensure we have data before plotting the bell curve
    if len(all_combined_exponents) == 0:
        print("No data available to plot the bell curve.")
        return

    # Plot the bell curve
    plot_bell_curve(np.array(all_combined_exponents))

if __name__ == "__main__":
    main()