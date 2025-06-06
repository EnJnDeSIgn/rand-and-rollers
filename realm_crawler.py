import random

# Define the Player class
class Player:
    def __init__(self, player_class):
        self.player_class = player_class
        if player_class == "swordman":
            self.max_health = 150
            self.max_energy = 100
        else:  # wizard
            self.max_health = 100
            self.max_energy = 150
        self.health = self.max_health
        self.energy = self.max_energy
        self.inventory = []
        self.gold = 0
        self.weapon_damage = 0.0

    def take_damage(self, amount):
        self.health = max(0, self.health - amount)
        print(f"You take {amount} damage. Your health is now {self.health}.")
        if self.health <= 0:
            print("You have been defeated! Game Over!")
            exit()

    def heal(self, amount):
        self.health = min(self.max_health, self.health + amount)
        print(f"You heal {amount} health. Your health is now {self.health}.")

    def lose_energy(self, amount):
        self.energy = max(0, self.energy - amount)
        print(f"You use {amount} energy. Your energy is now {self.energy}.")

    def replenish_energy(self, amount):
        self.energy = min(self.max_energy, self.energy + amount)
        print(f"You recover {amount} energy. Your energy is now {self.energy}.")

# Random encounters
def encounter_friendly_npc(player):
    print("You meet a friendly NPC who gives you advice and restores some of your health.")
    heal_amount = random.randint(5, 21)
    player.heal(heal_amount)

def encounter_enemy(player):
    print("You encounter an enemy! Prepare for battle!")
    enemy_health = random.randint(20, 75)

    while player.health > 0 and enemy_health > 0:
        attack = input("Do you want to attack? (y/n) ").lower()
        if attack == "y":
            enemy_health -= player.weapon_damage
            print(f"You hit the enemy! Enemy health is now {enemy_health}.")
            if enemy_health > 0:
                damage = random.randint(15, 35)
                player.take_damage(damage)
                print(f"The enemy hits back! Your health is now {player.health}.")
        elif attack == "n":
            print("You fled the battle!")
            break
        else:
            print("Incorrect input. Please type 'y' or 'n'.")

    if enemy_health <= 0:
        print("You defeated the enemy!")
        gold = random.randint(1, 10)
        player.gold += gold
        print(f"You receive {gold} gold. Total gold: {player.gold}")

def encounter_treasure(player):
    print("You find a treasure chest filled with gold!")
    gold = random.randint(1, 20)
    player.gold += gold
    print(f"You receive {gold} gold. Total gold: {player.gold}")

def encounter_trap(player):
    print("You encounter a trap! You lose some health.")
    damage = random.randint(33, 50)
    player.take_damage(damage)

def random_encounter(player):
    encounters = [encounter_friendly_npc, encounter_enemy, encounter_treasure, encounter_trap]
    encounter = random.choice(encounters)
    encounter(player)

# Main game loop
def main():
    player_class = input("Would you like to play a swordman or wizard? ").lower()
    if player_class not in ["swordman", "wizard"]:
        print("Invalid class. Please restart the game.")
        return

    player = Player(player_class)
    print(f"You are a {player_class}. Health: {player.health}, Energy: {player.energy}, Gold: {player.gold}")

    while True:
        action = input("Where would you like to go? (shop, inn, gate, quit): ").lower()

        if action == "quit":
            print("Goodbye!")
            break
        elif action == "shop":
            print(f"Gold: {player.gold}")
            print("rusty sword or wand: 0    gold. command: buy 0.")
            print("woody sword or wand: 100  gold. command: buy 1.")
            print("Energy Token       : 500  gold. command: buy 2.")
            print("Health Token       : 500  gold. command: buy 3.")
            buy = input("Welcome to the shop! Type 'buy 0' to purchase a weapon: ").lower()
            if buy == "buy 0":
                if player.player_class == "swordman":
                    player.weapon_damage = player.max_health * 0.1
                    print("You buy the rusty sword!")
                elif player.player_class == "wizard":
                    player.weapon_damage = player.energy * 0.2
                    print("You buy the rusty wand!")
            elif buy == "buy 1":
                if player.gold < 100:
                    print("You Don't Have 100 Gold")
                    continue
                else:
                    gold = 100
                    player.gold -= gold
                    if player.player_class == "swordman":
                        player.weapon_damage = player.max_health * 0.2
                        print(f"You buy the woody sword! You pay {gold} gold. Total gold: {player.gold}")
                    elif player.player_class == "wizard":
                        player.weapon_damage = player.energy * 0.3
                        print(f"You buy the woody wand! You pay {gold} gold. Total gold: {player.gold}")
            elif buy == "buy 2":
                if player.gold < 500:
                    print("You Don't Have 500 Gold")
                    continue
                else:
                    gold = 500
                    player.gold -= gold
                    energy_token = 10
                    player.max_energy += energy_token
                    print(f"You buy the energy token! You pay {gold} gold. Total gold: {player.gold}")
                    print(f"energy : {player.energy} / {player.max_energy}")
            elif buy == "buy 3":
                if player.gold < 500:
                    print("You Don't Have 500 Gold")
                    continue
                else:
                    gold = 500
                    player.gold -= gold
                    health_token = 10
                    player.max_health += health_token
                    print(f"You buy the health token! You pay {gold} gold. Total gold: {player.gold}")
                    print(f"energy : {player.health} / {player.max_health}")
            else:
                print("Invalid input.")
        elif action == "inn":
            print("Welcome to the inn! Would you like to rest for free? (y/n)")
            rest = input().lower()
            if rest == "y":
                player.health = player.max_health
                player.energy = player.max_energy
                print(f"You rest and recover. Health: {player.health}, Energy: {player.energy}")
            elif rest == "n":
                print("You leave the inn.")
            else:
                print("Invalid input.")
        elif action == "gate":
            print("You leave the city! What direction would you like to go? (a, b, c) or 'town' to return.")
            while True:
                if player.energy == 0:
                    print("You're too tired! Returning to town.")
                    break
                else:
                    direction = input("Direction (a, b, c) or 'town': ").lower()
                    if direction in ["a", "b", "c"]:
                        player.lose_energy(10)
                        random_encounter(player)
                        if player.energy == 0:
                            print("You're out of energy! Returning to town.")
                            break
                    elif direction == "town":
                        print("Returning to town.")
                        break
                    else:
                        print("Invalid input. Please choose a direction (a, b, c) or 'town'.")
        else:
            print("Invalid input.")

if __name__ == "__main__":
    main()