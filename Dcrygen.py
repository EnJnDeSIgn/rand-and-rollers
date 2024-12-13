import pandas as pd
import numpy as np

def generate_data(size):
    return np.random.randint(0, 500000000, size)

def split_data_to_csv(data, file_name_prefix, sheet_size=1048576):
    total_chunks = (len(data) + sheet_size - 1) // sheet_size

    for i in range(total_chunks):
        start_row = i * sheet_size
        end_row = min((i + 1) * sheet_size, len(data))
        chunk = data[start_row:end_row]
        df = pd.DataFrame(chunk, columns=['BaseSet'])
        file_name = f'{file_name_prefix}_part{i+1}.csv'
        print(f'Writing {file_name} from row {start_row + 1} to {end_row}')
        df.to_csv(file_name, index=False, header=False)

n = 536870912
base_set = generate_data(n)
split_data_to_csv(base_set, 'base_set')

print("CSV files created successfully.")