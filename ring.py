import sys

# Function for player decisions
def make_choice(prompt, choices):
    print(prompt)
    for i, choice in enumerate(choices, 1):
        print(f"{i}. {choice}")

    while True:
        try:
            selection = int(input("Enter your choice (number): "))
            if 1 <= selection <= len(choices):
                return selection
            else:
                print("Invalid choice. Try again.")
        except ValueError:
            print("Please enter a number.")

# Introduction to the game
def game_intro():
    print("Welcome to 'The Ring: Text Adventure'!")
    print("You awaken in a cold, stone room, your head throbbing. You find an ancient ring on your finger...")
    print("The room is dimly lit with ancient symbols carved into the walls.")
    print("Your goal is to unlock the secrets of this room and escape.")

# Main room logic
def mysterious_room():
    has_ring = True  # Player starts with the ring
    box_open = False  # Box is initially closed

    print("\nYou are in the mysterious room. There is a table in the center with a locked box.")
    print("The walls are covered with glowing symbols. A faint hum fills the air.")

    while True:
        choice = make_choice(
            "What would you like to do?",
            [
                "Examine the symbols on the walls",
                "Inspect the locked box on the table",
                "Try to open the door",
                "Examine the ring"
            ]
        )

        if choice == 1:
            print("\nThe symbols on the walls seem to form a pattern. You recognize one symbol: 'Ω'.")
            print("It represents 'The Gate'. Maybe it's a clue.")
        elif choice == 2:
            print("\nThe box has a keyhole. You'll need a key to open it.")
            if has_ring:  # Check if the player has the ring
                print("You notice the ring seems to fit the keyhole.")
                use_ring = input("Do you want to use the ring to open the box? (yes/no): ").lower()
                if use_ring == "yes":
                    print("With a click, the ring unlocks the box!")
                    box_open = True
                else:
                    print("You decide to keep the ring for now.")
            else:
                print("You need a key to open the box.")
        elif choice == 3:
            print("\nThe door is firmly locked. You'll need to find a way to open it.")
            if box_open:
                print("Inside the box you find a rusty key!")
                open_door = input("Do you use the key to open the door? (yes/no): ").lower()
                if open_door == "yes":
                    print("You hear a loud click and the door creaks open.")
                    return  # Ends the game
                else:
                    print("You decide not to open the door.")
            else:
                print("You still need to open the box first.")
        elif choice == 4:
            print("\nThe ring feels cold to the touch and is engraved with strange symbols.")
            print("You feel a faint vibration as you hold it, as if it has some latent power.")
        else:
            print("Invalid choice.")

# Main game loop
def main():
    game_intro()
    mysterious_room()
    print("Game Over.")  # Add a Game Over message

if __name__ == "__main__":
    main()