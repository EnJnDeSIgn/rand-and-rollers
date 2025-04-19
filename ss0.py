import math
import argparse
from config import G, c  # Import constants from a configuration file


def calculate_shapiro_delay(G, M, c, r1, r2, d):
    """
    Calculates the Shapiro time delay.

    Args:
        G (float): Gravitational constant (m^3 kg^-1 s^-2)
        M (float): Mass of the massive object (kg)
        c (float): Speed of light (m/s)
        r1 (float): Distance from signal source to massive object (m)
        r2 (float): Distance from receiver to massive object (m)
        d (float): Distance between source and receiver (m)

    Returns:
        float: The Shapiro time delay in seconds. Returns None if inputs are invalid.
    """
    # Input validation
    if not all(isinstance(x, (int, float)) for x in [G, M, c, r1, r2, d]):
        print("Error: All inputs must be numbers. Please check your inputs and try again.")
        return None
    if r1 <= 0 or r2 <= 0 or d <= 0 or c <= 0:
        print("Error: Distances and speed of light must be positive values.")
        return None
    if M <= 0:
        print("Error: Mass must be positive.")
        return None

    # Logarithm argument check
    arg = (r1 + r2 + d) / (r1 + r2 - d)
    if arg <= 1:
        print(
            "Error: Logarithm argument must be greater than 1. Check input values (r1, r2, d) to ensure they form a valid triangle (r1 + r2 > d)."
        )
        return None

    # Calculation
    try:
        delay = (2 * G * M / (c**3)) * math.log(arg)
        return delay
    except ValueError as e:
        print(f"Error during calculation: {e}. Check input values.")
        return None


def main():
    """
    Command-line interface for calculating the Shapiro time delay.
    """
    parser = argparse.ArgumentParser(description="Calculate the Shapiro time delay.")
    parser.add_argument("mass", type=float, help="Mass of the massive object (kg)")
    parser.add_argument(
        "distance_to_source",
        type=float,
        help="Distance from signal source to massive object (m)",
    )
    parser.add_argument(
        "distance_to_receiver",
        type=float,
        help="Distance from receiver to massive object (m)",
    )
    parser.add_argument(
        "source_receiver_distance",
        type=float,
        help="Distance between source and receiver (m)",
    )
    args = parser.parse_args()

    # Calculate the delay
    delay = calculate_shapiro_delay(
        G,
        args.mass,
        c,
        args.distance_to_source,
        args.distance_to_receiver,
        args.source_receiver_distance,
    )

    # Display the result
    if delay is not None:
        print(f"\nThe Shapiro time delay is: {delay:.6e} seconds")
    else:
        print("\nCould not calculate the Shapiro time delay due to invalid inputs.")


if __name__ == "__main__":
    main()