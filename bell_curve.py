import numpy as np
import scipy.stats as stats

def main():
    # Inputs
    n = int(input("Enter the number of data points: "))
    data = np.zeros(n)

    print("Enter the data points: ")
    for i in range(n):
        data[i] = float(input(f"Data point {i+1}: "))

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
        print(f"x = {x}, pdf value = {pdf:.64e}")

if __name__ == "__main__":
    main()