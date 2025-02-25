import matplotlib.pyplot as plt

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

# Fan's angular acceleration and total time
angular_acceleration = 100  # rad/s²
simulation_time = 0.1       # seconds

# Run the simulation
final_omega, total_theta, times, omegas, thetas = simulate_fan_motion(angular_acceleration, simulation_time)

print(f"Final Angular Velocity: {final_omega:.2f} rad/s")
print(f"Total Angular Displacement: {total_theta:.2f} radians")

# Plotting the results
plt.figure(figsize=(12, 6))

# Angular Velocity vs. Time
plt.subplot(1, 2, 1)
plt.plot(times, omegas, label='Angular Velocity', color='green')
plt.xlabel('Time (s)')
plt.ylabel('Angular Velocity (rad/s)')
plt.title('Fan Angular Velocity vs. Time')
plt.legend()

# Angular Displacement vs. Time
plt.subplot(1, 2, 2)
plt.plot(times, thetas, label='Angular Displacement', color='red')
plt.xlabel('Time (s)')
plt.ylabel('Angular Displacement (rad)')
plt.title('Fan Angular Displacement vs. Time')
plt.legend()

plt.tight_layout()
plt.show()