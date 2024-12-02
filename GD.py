import pandas as pd
import numpy as np

# Simulate data for glacier decay
years = np.arange(2000, 2050)
decay_factors = np.linspace(1.0, 0.1, len(years))  # Simulating gradual decay over time
temperature_effects = np.random.normal(0.5, 0.1, len(years))  # Random temperature variations
precipitation_effects = np.random.normal(0.5, 0.1, len(years))  # Random precipitation variations

# Calculate the simulated glacier size
glacier_size = decay_factors * temperature_effects * precipitation_effects

# Create DataFrame
glacier_data = pd.DataFrame({'Year': years, 'GlacierSize': glacier_size})

# Save to CSV
glacier_data.to_csv('simulated_glacier_data.csv', index=False)
