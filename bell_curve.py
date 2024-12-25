import numpy as np
import scipy.stats as stats
import matplotlib.pyplot as plt

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

if __name__ == "__main__":
    main()