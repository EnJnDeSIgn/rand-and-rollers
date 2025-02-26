import matplotlib.pyplot as plt
import numpy as np
import random

def simulate_runner_motion_variable_acc(a_func, s_total, dt=0.001):
    # Random start delay (reaction time)
    reaction_time = random.uniform(0.1, 0.3)  # 100ms to 300ms
    t = reaction_time
    s = 0.0
    v = 0.0

    times = []
    positions = []
    velocities = []
    accelerations = []

    # Environmental factors
    air_density = 1.225  # kg/m^3
    drag_coefficient = 1.0
    frontal_area = 0.45  # m^2
    mass = 70  # kg

    while s < s_total:
        elapsed_time = t - reaction_time  # Time since start
        a = a_func(elapsed_time)

        # Append current state to lists before updating
        times.append(t)
        positions.append(s)
        velocities.append(v)
        accelerations.append(a)

        # Calculate drag force
        drag_force = 0.5 * air_density * drag_coefficient * frontal_area * v**2
        drag_acceleration = drag_force / mass

        total_acceleration = a - drag_acceleration

        # Update position, velocity, and time
        s += v * dt
        v += total_acceleration * dt
        t += dt

        # Ensure velocity doesn't become negative
        if v < 0:
            v = 0

        # Terminate if acceleration and velocity are negligible
        if v <= 0.1 and a <= 0.1:
            break

    return t, times, positions, velocities, accelerations

def acceleration_function(t):
    # Initial acceleration with greater fluctuation
    base_acceleration = 3.0  # m/s²
    fluctuation = random.uniform(-1.5, 1.5)
    initial_acceleration = base_acceleration + fluctuation
    initial_acceleration = max(initial_acceleration, 0.5)

    # Fatigue factor with greater fluctuation
    base_fatigue = 0.1
    fatigue_fluctuation = random.uniform(-0.05, 0.05)
    fatigue_rate = base_fatigue + fatigue_fluctuation
    fatigue_rate = max(fatigue_rate, 0.05)

    # Non-linear fatigue model
    a = initial_acceleration * np.exp(-fatigue_rate * t)
    a = max(a, 0.1)
    return a

# Runner's race distance
distance = 100  # meters

# Run the runner simulation
eta, times_runner, positions, velocities, accelerations = simulate_runner_motion_variable_acc(acceleration_function, distance)

print(f"Estimated Time of Arrival with Variable Acceleration: {eta:.60f} seconds")
#print(f"Length of times_runner: {len(times_runner)}")
#print(f"Length of accelerations: {len(accelerations)}")
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
    fluctuation = random.uniform(-5.0, 5.0)  # random fluctuation
    alpha = base_alpha + fluctuation
    return alpha

# Total simulation time for fan
simulation_time = 0.1  # seconds

# Run the fan simulation
final_omega, total_theta, times_fan, omegas, thetas, alphas = simulate_fan_motion_variable_alpha(angular_acceleration_function, simulation_time)

print(f"Final Angular Velocity with Variability: {final_omega:.60f} rad/s")
print(f"Total Angular Displacement with Variability: {total_theta:.60f} radians")

# Plotting Runner's Performance
plt.figure(figsize=(18, 5))

# Position vs. Time
plt.subplot(1, 3, 1)
plt.plot(times_runner, positions, label='Position', color='blue')
plt.xlabel('Time (s)')
plt.ylabel('Position (m)')
plt.title('Runner Position vs. Time')
plt.legend()
plt.grid(True)

# Velocity vs. Time
plt.subplot(1, 3, 2)
plt.plot(times_runner, velocities, label='Velocity', color='orange', linestyle='--')
plt.xlabel('Time (s)')
plt.ylabel('Velocity (m/s)')
plt.title('Runner Velocity vs. Time')
plt.legend()
plt.grid(True)

# Acceleration vs. Time
plt.subplot(1, 3, 3)
plt.plot(times_runner, accelerations, label='Acceleration', color='green')
plt.xlabel('Time (s)')
plt.ylabel('Acceleration (m/s²)')
plt.title('Runner Acceleration vs. Time')
plt.legend()
plt.grid(True)

plt.tight_layout()
plt.show()
# Optional: Visualize ETA Distribution
#etas = []
#num_simulations = 100

#for _ in range(num_simulations):
#    eta, _, _, _, _ = simulate_runner_motion_variable_acc(acceleration_function, distance)
#    etas.append(eta)

#plt.hist(etas, bins=15, color='skyblue', edgecolor='black')
#plt.xlabel('Estimated Time of Arrival (s)')
#plt.ylabel('Frequency')
#plt.title('Distribution of ETAs over Multiple Simulations')
#plt.show()