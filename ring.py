from rooms.aetherium import aetherium
from rooms.hall_of_echoes import hall_of_echoes
from rooms.library import library
from rooms.dimensional_nexus import dimensional_nexus
from utils.inventory import Inventory
from utils.game_map import game_map

def main():
    print("Welcome to the Rand and Rollers Adventure!")
    
    # Initialize the player's inventory
    inventory = Inventory()
    
    # Start at the first room
    current_room = "start"
    
    while current_room != "end":
        if current_room == "aetherium":
            current_room = aetherium(inventory)
        elif current_room == "hall_of_echoes":
            current_room = hall_of_echoes(inventory)
        elif current_room == "library":
            current_room = library(inventory)
        elif current_room == "dimensional_nexus":
            current_room = dimensional_nexus(inventory)
        else:
            print("You find yourself in a mysterious room. Where will you go next?")
            current_room = game_map.get(current_room, "end")
    
    print("Congratulations! You've reached the end of the adventure.")
    print("Thank you for playing!")

if __name__ == "__main__":
    main()