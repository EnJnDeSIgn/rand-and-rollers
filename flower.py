import numpy as np
import matplotlib.pyplot as plt  # For visualization


class Flower:
    def __init__(self, size, frequency):
        self.size = np.float64(size)
        self.frequency = np.float64(frequency)
        self.energy = np.float64(0)
        self.resonance_level = np.float64(0)

    def update_resonance(self, external_force=0):
        """
        Updates the resonance level of the flower based on its frequency and an external force.
        """
        self.resonance_level += self.frequency * (1 - self.resonance_level) + external_force
        if self.resonance_level > 0.9:
            self.resonance_level = np.random.uniform(0.009, 0.691)
        return self.resonance_level

    def pulse(self):
        """
        Simulates a pulse event for the flower.
        """
        print(f"Flower Pulsed! Resonance Level: {self.resonance_level:.60f}")


class Chamber:
    def __init__(self, dimensions, flower_count=1):
        self.dimensions = {k: np.float64(v) for k, v in dimensions.items()}
        self.flowers = [Flower(size=1.0, frequency=np.random.uniform(8.0, 12.0)) for _ in range(flower_count)]
        self.stability = np.float64(1.0)

    def update(self, external_force=0):
        """
        Updates the chamber's state by adjusting stability based on the flowers' resonance levels
        and an external force.
        """
        total_resonance = 0
        for flower in self.flowers:
            total_resonance += flower.update_resonance(external_force)

        # Average resonance level of all flowers
        avg_resonance = total_resonance / len(self.flowers)
        self.stability -= avg_resonance * np.float64(0.1)

        if self.stability < 0.1:
            print("Chamber is Unstable!")

        return avg_resonance, self.stability


class Simulation:
    def __init__(self):
        # Randomly select flower count (3 or 4)
        flower_count = np.random.choice([3, 4])
        # Randomly select external force amplitude within range 0.005 to 0.05
        external_force_amplitude = np.random.uniform(0.005, 0.05)

        self.chamber = Chamber(dimensions={"length": 10, "width": 10, "height": 10}, flower_count=flower_count)
        self.steps = 0
        self.resonance_history = []
        self.stability_history = []
        self.external_force_amplitude = external_force_amplitude

        print(f"Initialized Simulation with {flower_count} flowers and external force amplitude: {external_force_amplitude:.64f}")

    def run(self, max_steps=20):
        """
        Runs the simulation for a specified number of steps.
        """
        print("Starting the Simulation...\n")
        while self.steps < max_steps:
            self.steps += 1

            # Simulate an external force as a sinusoidal function
            external_force = self.external_force_amplitude * np.sin(2 * np.pi * self.steps / max_steps)

            # Update the chamber
            avg_resonance, stability = self.chamber.update(external_force)

            # Log data
            self.resonance_history.append(avg_resonance)
            self.stability_history.append(stability)

            # Print step details
            print(f"--- Step {self.steps} ---")
            print(f"External Force: {external_force:.90f}")
            print(f"Average Resonance Level: {avg_resonance:.15f}, Chamber Stability: {stability:.15f}")

            if stability < 0.1:
                print("The Chamber has reached critical instability!")
                break

            if self.steps % 5 == 0:
                for flower in self.chamber.flowers:
                    flower.pulse()

        print("\nSimulation Complete.")
        self.plot_results()

    def plot_results(self):
        """
        Plots the resonance and stability history over time.
        """
        plt.figure(figsize=(10, 5))
        plt.plot(self.resonance_history, label="Average Resonance Level")
        plt.plot(self.stability_history, label="Chamber Stability")
        plt.xlabel("Steps")
        plt.ylabel("Values")
        plt.title("Resonance and Stability Over Time")
        plt.legend()
        plt.grid()
        plt.show()


if __name__ == "__main__":
    simulation = Simulation()
    simulation.run(max_steps=20)