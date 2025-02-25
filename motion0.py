import matplotlib.pyplot as plt
import numpy as np

def simulate_time_complexities(input_sizes, complexities):
    times = {name: [] for name in complexities}

    for n in input_sizes:
        for name, func in complexities.items():
            times[name].append(func(n))

    return times

def simulate_runner_motion(a, s_total, dt=0.01):
    t = 0.0
    s = 0.0
    v = 0.0
    times = []
    positions = []
    velocities = []

    while s < s_total:
        times.append(t)
        positions.append(s)
        velocities.append(v)

        s += v * dt
        v += a * dt
        t += dt

    return t, times, positions, velocities

def calculate_cpu_instructions(frequency, t_total, ipc=1):
    instructions = frequency * t_total * ipc
    return instructions

def simulate_fan_motion(alpha, t_total, dt=0.001):
    t = 0.0
    omega = 0.0
    theta = 0.0
    times = []
    omegas = []
    thetas = []

    while t <= t_total:
        times.append(t)
        omegas.append(omega)
        thetas.append(theta)

        theta += omega * dt
        omega += alpha * dt
        t += dt

    return omega, theta, times, omegas, thetas

# CPU parameters
clock_speed = 3e9     # 3 GHz converted to Hz
time_elapsed = 1      # 1 second
ipc = 4               # Assume CPU can execute 4 instructions per cycle

# Calculate instructions
instructions = calculate_cpu_instructions(clock_speed, time_elapsed, ipc)

print(f"Total Instructions Executed: {instructions:.0f}")


# Fan's angular acceleration and total time
angular_acceleration = 100  # rad/s²
simulation_time = 0.1       # seconds

# Run the simulation
final_omega, total_theta, times, omegas, thetas = simulate_fan_motion(angular_acceleration, simulation_time)

print(f"Final Angular Velocity: {final_omega:.2f} rad/s")
print(f"Total Angular Displacement: {total_theta:.2f} radians")

# Runner's acceleration and race distance
acceleration = 3.0    # m/s² (typical sprinter acceleration)
distance = 100        # meters (100m dash)

# Run the simulation
eta, times, positions, velocities = simulate_runner_motion(acceleration, distance)

print(f"Estimated Time of Arrival: {eta:.2f} seconds")

# Define time complexities
complexities = {
    'O(1)': lambda n: 1,
    'O(log n)': lambda n: np.log2(n),
    'O(n)': lambda n: n,
    'O(n log n)': lambda n: n * np.log2(n),
    'O(n^2)': lambda n: n**2
}

# Input sizes
input_sizes = np.arange(1, 1001)

# Simulate
times = simulate_time_complexities(input_sizes, complexities)

# Plotting
plt.figure(figsize=(10, 6))
for name, time in times.items():
    plt.plot(input_sizes, time, label=name)

plt.xlabel('Input Size (n)')
plt.ylabel('Time (arbitrary units)')
plt.title('Algorithm Time Complexities')
plt.legend()
plt.ylim(0, 100000)
plt.show()
