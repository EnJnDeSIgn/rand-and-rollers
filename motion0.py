import matplotlib.pyplot as plt
import numpy as np
import random

def simulate_time_complexities(input_sizes, complexities):
    times = {name: [] for name in complexities}

    for n in input_sizes:
        for name, func in complexities.items():
            times[name].append(func(n))

    return times

def simulate_runner_motion_variable_acc(a_func, s_total, dt=0.01):
    t = 0.0
    s = 0.0
    v = 0.0
    times = []
    positions = []
    velocities = []
    accelerations = []

    while s < s_total:
        a = a_func(t)
        times.append(t)
        positions.append(s)
        velocities.append(v)
        accelerations.append(a)

        s += v * dt
        v += a * dt
        t += dt

        # If acceleration is zero and velocity is zero, the runner stops moving
        if v <= 0 and a <= 0:
            break

    return t, times, positions, velocities, accelerations

def acceleration_function(t):
    initial_acceleration = 3.0  # m/s²
    fatigue_factor = 0.1        # acceleration decrease per second

    # Introduce random fluctuation in initial acceleration
    fluctuation = random.uniform(-0.2, 0.2)  # Adjust the range as needed
    initial_acceleration += fluctuation

    # Optional: Add random fluctuation to fatigue factor
    fatigue_fluctuation = random.uniform(-0.02, 0.02)
    effective_fatigue = fatigue_factor + fatigue_fluctuation

    a = initial_acceleration - effective_fatigue * t
    return max(a, 0)  # Acceleration cannot be negative

def calculate_cpu_instructions(frequency, t_total, ipc=1):
    instructions = frequency * t_total * ipc
    return instructions

def simulate_fan_motion_variable_alpha(alpha_func, t_total, dt=0.001):
    t = 0.0
    omega = 0.0
    theta = 0.0
    times = []
    omegas = []
    thetas = []
    alphas = []

    while t <= t_total:
        alpha = alpha_func(t)
        times.append(t)
        omegas.append(omega)
        thetas.append(theta)
        alphas.append(alpha)

        theta += omega * dt
        omega += alpha * dt
        t += dt

    return omega, theta, times, omegas, thetas, alphas

def angular_acceleration_function(t):
    base_alpha = 100          # rad/s²
    fluctuation = random.uniform(-5, 5)  # random fluctuation
    alpha = base_alpha + fluctuation
    return alpha

# Total simulation time for fan
simulation_time = 0.1  # seconds

# Run the fan simulation
final_omega, total_theta, times_fan, omegas, thetas, alphas = simulate_fan_motion_variable_alpha(angular_acceleration_function, simulation_time)

print(f"Final Angular Velocity with Variability: {final_omega:.2f} rad/s")
print(f"Total Angular Displacement with Variability: {total_theta:.2f} radians")

# Runner's race distance
distance = 100  # meters

# Run the runner simulation
eta, times_runner, positions, velocities, accelerations = simulate_runner_motion_variable_acc(acceleration_function, distance)

print(f"Estimated Time of Arrival with Variable Acceleration: {eta:.2f} seconds")

# Plotting Runner's Performance
plt.figure(figsize=(18, 5))

# Position vs Time
plt.subplot(1, 3, 1)
plt.plot(times_runner, positions, label='Position', color='blue')
plt.xlabel('Time (s)')
plt.ylabel('Position (m)')
plt.title('Runner Position vs. Time')
plt.legend()
plt.grid(True)

# Velocity vs Time
plt.subplot(1, 3, 2)
plt.plot(times_runner, velocities, label='Velocity', color='orange', linestyle='--')
plt.xlabel('Time (s)')
plt.ylabel('Velocity (m/s)')
plt.title('Runner Velocity vs. Time')
plt.legend()
plt.grid(True)

# Acceleration vs Time
plt.subplot(1, 3, 3)
plt.plot(times_runner, accelerations, label='Acceleration', color='green')
plt.xlabel('Time (s)')
plt.ylabel('Acceleration (m/s²)')
plt.title('Runner Acceleration vs. Time')
plt.legend()
plt.grid(True)

plt.tight_layout()
plt.show()

# Define time complexities
complexities = {
    'O(1)': lambda n: 1 + random.uniform(-0.1, 0.1),
    'O(log n)': lambda n: np.log2(n) + random.uniform(-0.5, 0.5),
    'O(n)': lambda n: n + random.uniform(-10, 10),
    'O(n log n)': lambda n: n * np.log2(n) + random.uniform(-100, 100),
    'O(n^2)': lambda n: n**2 + random.uniform(-1000, 1000)
}

# Input sizes
input_sizes = np.arange(1, 1001)

# Simulate with variability
times_variable = simulate_time_complexities(input_sizes, complexities)

# Plotting Time Complexities
plt.figure(figsize=(10, 6))
for name, time in times_variable.items():
    plt.plot(input_sizes, time, label=name)

plt.xlabel('Input Size (n)')
plt.ylabel('Time with Variability (arbitrary units)')
plt.title('Algorithm Time Complexities with Variability')
plt.legend()
plt.ylim(0, 100000)
plt.grid(True)
plt.show()