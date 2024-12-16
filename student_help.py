import numpy as np
import matplotlib.pyplot as plt

# Define the understanding function (f(x))
def understanding(t):
    # Example: understanding improves over time with some noise
    return 5 * np.log(t + 1) + np.random.normal(0, 0.5, len(t))

# Calculate the derivative (f'(x))
def derivative(understanding_levels):
    return np.gradient(understanding_levels)
	
# Define the function f(x) = 1/x
def f(x):
    return 1 / x

# Time periods (e.g., days or study sessions)
time_periods = np.linspace(1, 100, 100)

# Calculate understanding levels over time
understanding_levels = understanding(time_periods)

# Calculate the rate of change in understanding (derivative)
rate_of_change = derivative(understanding_levels)

# Create an array of x values for the limit function
x = np.linspace(0.1, 100, 400)
y = f(x)

# Print understanding levels and rate of change
print("Time Periods | Understanding Level | Rate of Change")
print("-------------------------------------------------")
for t, ul, rc in zip(time_periods, understanding_levels, rate_of_change):
    print(f"{t:12.2f} | {ul:18.5f} | {rc:16.5f}")

# Plot the results
plt.figure(figsize=(10, 6))

plt.subplot(2, 1, 1)
plt.plot(time_periods, understanding_levels, label='Understanding Level')
plt.plot(x, y, label='$f(x) = \\frac{1}{x}$', linestyle='--')
plt.xlabel('Time Periods')
plt.ylabel('Understanding Level')
plt.title('Student Understanding Over Time')
plt.legend()

plt.subplot(2, 1, 2)
plt.plot(time_periods, rate_of_change, label='Rate of Change in Understanding', color='r')
plt.plot(x, y, label='$f(x) = \\frac{1}{x}$', linestyle='--')
plt.axhline(0, color='k', linestyle='--')
plt.xlabel('Time Periods')
plt.ylabel('Rate of Change')
plt.title('Rate of Change in Understanding Over Time')
plt.legend()

plt.tight_layout(pad=2.0)  # Adjust padding between subplots
plt.show()