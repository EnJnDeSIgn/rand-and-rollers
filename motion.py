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

import matplotlib.pyplot as plt

# Runner's acceleration and race distance
acceleration = 3.0    # m/s² (typical sprinter acceleration)
distance = 100        # meters (100m dash)

# Run the simulation
eta, times, positions, velocities = simulate_runner_motion(acceleration, distance)

print(f"Estimated Time of Arrival: {eta:.2f} seconds")

# Plotting the results
plt.figure(figsize=(12, 6))

# Position vs. Time
plt.subplot(1, 2, 1)
plt.plot(times, positions, label='Position')
plt.xlabel('Time (s)')
plt.ylabel('Position (m)')
plt.title('Runner Position vs. Time')
plt.legend()

# Velocity vs. Time
plt.subplot(1, 2, 2)
plt.plot(times, velocities, label='Velocity', color='orange')
plt.xlabel('Time (s)')
plt.ylabel('Velocity (m/s)')
plt.title('Runner Velocity vs. Time')
plt.legend()

plt.tight_layout()
plt.show()