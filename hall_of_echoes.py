def hall_of_echoes(inventory):
    print("\nYou enter the Hall of Echoes. Shimmering mirrors line the walls.")
    print("Whispers fill the air, fragments of forgotten memories.")

    # Puzzle Logic
    riddle = "I have no voice, but I speak to all. I have no body, but I can be broken. What am I?"
    answer = input("Enter your answer: ").lower()

    if answer == "silence":
        print("The mirrors reveal a hidden inscription.")
        inventory.add_item("Memory Shard")
        return "library"
    else:
        print("The mirrors remain clouded.")
        return "hall_of_echoes"