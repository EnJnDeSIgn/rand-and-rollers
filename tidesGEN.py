import pandas as pd
import numpy as np

# Create synthetic tide data
timestamps = pd.date_range(start='2024-01-01', periods=24, freq='h')
tide_heights = 1.5 + 0.5 * np.sin(np.linspace(0, 2 * np.pi, len(timestamps)))

# Create DataFrame
tide_data = pd.DataFrame({'DateTime': timestamps, 'TideHeight': tide_heights})

# Save to CSV
tide_data.to_csv('mock_tide_data.csv', index=False)

