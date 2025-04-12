import numpy as np  # Import NumPy for precision calculations

class Flower:
    def __init__(self, size, frequency):
        self.size = np.float64(size)  # Use np.float64 for precision
        self.frequency = np.float64(frequency)  # Use np.float64 for precision
        self.energy = np.float64(0)
        self.resonance_level = np.float64(0)  # Represents the destabilization factor

    def update_resonance(self):
        """
        Updates the resonance level of the flower based on its frequency.
        """
        self.resonance_level += self.frequency * (1 - self.resonance_level)
        if self.resonance_level > 0.9:  # Max Stabilization point
            # Reset to a random value between 0.449 and 0.009
            self.resonance_level = np.random.uniform(0.009, 0.449)
        return self.resonance_level

    def pulse(self):
        """
        Simulates a pulse event for the flower.
        """
        print(f"Flower Pulsed! Resonance Level: {self.resonance_level:.10f}")


class Chamber:
    def __init__(self, dimensions):
        self.dimensions = {k: np.float64(v) for k, v in dimensions.items()}  # Use np.float64 for dimensions
        self.flower = Flower(size=1.0, frequency=10.0)  # Initial Flower Parameters
        self.stability = np.float64(1.0)  # Initial Stability Level

    def update(self):
        """
        Updates the chamber's state by adjusting stability based on the flower's resonance level.
        """
        resonance = self.flower.update_resonance()
        self.stability -= resonance * np.float64(0.1)  # Simulate the effect of resonance on stability
        if self.stability < 0.1:
            print("Chamber is Unstable!")
        return resonance, self.stability


class Simulation:
    def __init__(self):
        self.chamber = Chamber(dimensions={"length": 10, "width": 10, "height": 10})
        self.steps = 0

    def run(self, max_steps=20):
        """
        Runs the simulation for a specified number of steps.
        """
        print("Starting the Simulation...\n")
        while self.steps < max_steps:
            self.steps += 1
            print(f"--- Step {self.steps} ---")
            resonance, stability = self.chamber.update()
            print(f"Resonance Level: {resonance:.15f}, Chamber Stability: {stability:.15f}")

            if stability < 0.1:
                print("The Chamber has reached critical instability!")
                break

            # Trigger the flower to pulse occasionally
            if self.steps % 5 == 0:
                self.chamber.flower.pulse()

        print("\nSimulation Complete.")


# Running the simulation with our scene context
if __name__ == "__main__":
    simulation = Simulation()
    simulation.run(max_steps=20)