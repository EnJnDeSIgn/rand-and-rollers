def aetherium(inventory):
    print("\nYou enter the Aetherium. Pulsating blue light illuminates the chamber.")
    print("Energy conduits crisscross the room. It feels as if they are constantly shifting.")

    # Puzzle Logic
    conduit_sequence = "north-east-south-west"
    player_sequence = input("Enter the correct sequence (north-east-south-west): ").lower()
    if player_sequence == conduit_sequence:
        print("The conduits align, revealing a hidden passage.")
        inventory.add_item("Resonance Amplifier")
        return "hall_of_echoes"
    else:
        print("An energy surge throws you back! Try again.")
        return "aetherium"