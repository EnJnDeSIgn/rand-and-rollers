import math

def calculate_shapiro_delay(G, M, c, r1, r2, d):
    """
    Calculates the Shapiro time delay.

    Args:
        G: Gravitational constant (m^3 kg^-1 s^-2)
        M: Mass of the massive object (kg)
        c: Speed of light (m/s)
        r1: Distance from signal source to massive object (m)
        r2: Distance from receiver to massive object (m)
        d: Distance between source and receiver (m)

    Returns:
        The Shapiro time delay in seconds. Returns None if inputs are invalid.
    """
    if not all(isinstance(x, (int, float)) for x in [G, M, c, r1, r2, d]):
        print("Error: All inputs must be numbers.")
        return None
    if r1 <= 0 or r2 <= 0 or d <= 0 or c <= 0:
        print("Error: Distances and speed of light must be positive values.")
        return None
    try:
        delay = (2 * G * M / (c**3)) * math.log((r1 + r2 + d) / (r1 + r2 - d))
        return delay
    except ValueError as e:
        print(f"Error during calculation: {e}. Check input values.")
        return None

def main():
    """
    Command-line interface for calculating the Shapiro time delay.
    """
    # Constants
    G = 6.67430e-11  # Gravitational constant (m^3 kg^-1 s^-2)
    c = 299792458    # Speed of light (m/s)

    print("=== Shapiro Time Delay Calculator ===")
    print("Please provide the following inputs:")

    try:
        M = float(input("Enter the mass of the massive object (kg): "))
        r1 = float(input("Enter the distance from signal source to massive object (m): "))
        r2 = float(input("Enter the distance from receiver to massive object (m): "))
        d = float(input("Enter the distance between source and receiver (m): "))
    except ValueError:
        print("Invalid input. Please enter numeric values.")
        return

    # Calculate the delay
    delay = calculate_shapiro_delay(G, M, c, r1, r2, d)

    # Display the result
    if delay is not None:
        print(f"\nThe Shapiro time delay is: {delay:.6e} seconds")
    else:
        print("\nCould not calculate the Shapiro time delay due to invalid inputs.")

if __name__ == "__main__":
    main()