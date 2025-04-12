import numpy as np
import matplotlib.pyplot as plt  # For visualization

class Flower:
    def __init__(self, size, frequency):
        self.size = np.float64(size)
        self.frequency = np.float64(frequency)
        self.energy = np.float64(0)
        self.resonance_level = np.float64(0)

    def update_resonance(self):
        self.resonance_level += self.frequency * (1 - self.resonance_level)
        if self.resonance_level > 0.9:
            self.resonance_level = np.random.uniform(0.009, 0.691)
        return self.resonance_level

    def pulse(self):
        print(f"Flower Pulsed! Resonance Level: {self.resonance_level:.10f}")


class Chamber:
    def __init__(self, dimensions):
        self.dimensions = {k: np.float64(v) for k, v in dimensions.items()}
        self.flower = Flower(size=1.0, frequency=10.0)
        self.stability = np.float64(1.0)

    def update(self):
        resonance = self.flower.update_resonance()
        self.stability -= resonance * np.float64(0.1)
        if self.stability < 0.1:
            print("Chamber is Unstable!")
        return resonance, self.stability


class Simulation:
    def __init__(self):
        self.chamber = Chamber(dimensions={"length": 10, "width": 10, "height": 10})
        self.steps = 0
        self.resonance_history = []
        self.stability_history = []

    def run(self, max_steps=20):
        print("Starting the Simulation...\n")
        while self.steps < max_steps:
            self.steps += 1
            resonance, stability = self.chamber.update()

            # Log data
            self.resonance_history.append(resonance)
            self.stability_history.append(stability)

            # Print step details
            print(f"--- Step {self.steps} ---")
            print(f"Resonance Level: {resonance:.15f}, Chamber Stability: {stability:.15f}")

            if stability < 0.1:
                print("The Chamber has reached critical instability!")
                break

            if self.steps % 5 == 0:
                self.chamber.flower.pulse()

        print("\nSimulation Complete.")
        self.plot_results()

    def plot_results(self):
        plt.figure(figsize=(10, 5))
        plt.plot(self.resonance_history, label="Resonance Level")
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