import numpy as np
import matplotlib.pyplot as plt

# Define the understanding function (f(x))
def understanding(t):
    # Example: understanding improves over time with some noise
    return 5 * np.log(t + 1) + np.random.normal(0, 0.5, len(t))

# Calculate the derivative (f'(x))
def derivative(understanding_levels):
    return np.gradient(understanding_levels)

# Time periods (e.g., days or study sessions)
time_periods = np.linspace(1, 100, 100)

# Calculate understanding levels over time
understanding_levels = understanding(time_periods)

# Calculate the rate of change in understanding (derivative)
rate_of_change = derivative(understanding_levels)

# Plot the results
plt.figure(figsize=(12, 6))

plt.subplot(2, 1, 1)
plt.plot(time_periods, understanding_levels, label='Understanding Level')
plt.xlabel('Time Periods')
plt.ylabel('Understanding Level')
plt.title('Student Understanding Over Time')
plt.legend()

plt.subplot(2, 1, 2)
plt.plot(time_periods, rate_of_change, label='Rate of Change in Understanding', color='r')
plt.axhline(0, color='k', linestyle='--')
plt.xlabel('Time Periods')
plt.ylabel('Rate of Change')
plt.title('Rate of Change in Understanding Over Time')
plt.legend()

plt.tight_layout()
plt.show()