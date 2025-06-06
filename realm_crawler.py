import random
import json
import os

# Define the Player class
class Player:
    def __init__(self, player_class, health_tokens=0, energy_tokens=0, gold=0, weapon_damage=0.0):
        self.player_class = player_class
        self.base_health = 150 if player_class == "swordman" else 100
        self.base_energy = 100 if player_class == "swordman" else 150
        self.health_tokens = health_tokens
        self.energy_tokens = energy_tokens
        self.max_health = self.base_health + 10 * self.health_tokens
        self.max_energy = self.base_energy + 10 * self.energy_tokens
        self.health = self.max_health
        self.energy = self.max_energy
        self.inventory = []
        self.gold = gold
        self.weapon_damage = weapon_damage

    def add_health_token(self, count=1):
        self.health_tokens += count
        self.max_health = self.base_health + 10 * self.health_tokens

    def add_energy_token(self, count=1):
        self.energy_tokens += count
        self.max_energy = self.base_energy + 10 * self.energy_tokens

    def lose_energy(self, amount):
        self.energy = max(0, self.energy - amount)
        print(f"You use {amount} energy. Your energy is now {self.energy}.")

    def replenish_energy(self, amount):
        self.energy = min(self.max_energy, self.energy + amount)
        print(f"You recover {amount} energy. Your energy is now {self.energy}.")

    def heal(self, amount):
        self.health = min(self.max_health, self.health + amount)
        print(f"You heal {amount} health. Your health is now {self.health}.")

    def take_damage(self, amount):
        self.health = max(0, self.health - amount)
        print(f"You take {amount} damage. Your health is now {self.health}.")
        if self.health <= 0:
            print("You have been defeated! Game Over!")
            exit()

    # ... rest of your methods, e.g. take_damage, heal, etc. ...

    def to_dict(self):
        return {
            "player_class": self.player_class,
            "health_tokens": self.health_tokens,
            "energy_tokens": self.energy_tokens,
            "gold": self.gold,
            "weapon_damage": self.weapon_damage
        }

    @classmethod
    def from_dict(cls, data):
        return cls(
            player_class=data.get("player_class", "swordman"),
            health_tokens=data.get("health_tokens", 0),
            energy_tokens=data.get("energy_tokens", 0),
            gold=data.get("gold", 0),
            weapon_damage=data.get("weapon_damage", 0.0)
        )

SAVE_FILE = "savegame.json"

def save_game(player):
    with open(SAVE_FILE, "w") as f:
        json.dump(player.to_dict(), f)
    print("Game saved!")

def load_game():
    if not os.path.exists(SAVE_FILE):
        return None
    with open(SAVE_FILE, "r") as f:
        data = json.load(f)
    player = Player.from_dict(data)
    print("Game loaded!")
    return player

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

def encounter_lost(player):
    print("You lose your way! You lose some energy.")
    drain = (10, 20, 30)
    apply = random.choice(drain)
    player.lose_energy(apply)

def encounter_dragon(player):
    print("You encounter an enemy! Prepare for battle!")
    enemy_health = random.randint(125, 275)

    while player.health > 0 and enemy_health > 0:
        attack = input("Do you want to attack? (y/n) ").lower()
        if attack == "y":
            print("The enemy is a dragon, oh no!")
            enemy_health -= player.weapon_damage
            print(f"You hit the dragon! Enemy health is now {enemy_health}.")
            if enemy_health > 0:
                damage = random.randint(10, 20)
                player.take_damage(damage)
                print(f"The dragon hits back! Your health is now {player.health}.")
        elif attack == "n":
            print("You fled the battle!")
            break
        else:
            print("Incorrect input. Please type 'y' or 'n'.")

    if enemy_health <= 0:
        print("You defeated the dragon!")
        gold = random.randint(100, 500)
        player.gold += gold
        print(f"You receive {gold} gold. Total gold: {player.gold}")

def random_encounter(player):
    encounters = [encounter_friendly_npc, encounter_enemy, encounter_treasure, encounter_trap, encounter_lost, encounter_dragon]
    encounter = random.choice(encounters)
    encounter(player)

# Main game loop
def main():
    player = None
    if os.path.exists(SAVE_FILE):
        load = input("Saved game found. Load it? (y/n): ").lower()
        if load == "y":
            player = load_game()
    if not player:
        player_class = input("Would you like to play a swordman or wizard? ").lower()
        if player_class not in ["swordman", "wizard"]:
            print("Invalid class. Please restart the game.")
            return
        player = Player(player_class)
    print(f"You are a {player.player_class}. Health: {player.health}, Energy: {player.energy}, Gold: {player.gold}")

    while True:
        action = input("Where would you like to go? (shop, inn, gate, quit): ").lower()

        if action == "quit":
            save = input("Do you want to save your game? (y/n): ").lower()
            if save == "y":
                save_game(player)
            print("Goodbye!")
            break
        elif action == "shop":
            # ... rest of your shop logic, see below for updated tokens ...
            print(f"Gold: {player.gold}")
            print("rusty sword or wand: 0    gold. command: buy 0.")
            print("woody sword or wand: 100  gold. command: buy 1.")
            print("Energy Token       : 500  gold. command: buy 2.")
            print("Health Token       : 500  gold. command: buy 3.")
            buy = input("Welcome to the shop! Type your command: ").lower()
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
                player.gold -= 100
                if player.player_class == "swordman":
                    player.weapon_damage = player.max_health * 0.2
                    print(f"You buy the woody sword! You pay 100 gold. Total gold: {player.gold}")
                elif player.player_class == "wizard":
                    player.weapon_damage = player.energy * 0.3
                    print(f"You buy the woody wand! You pay 100 gold. Total gold: {player.gold}")
            elif buy == "buy 2":
                if player.gold < 500:
                    print("You Don't Have 500 Gold")
                    continue
                player.gold -= 500
                player.add_energy_token(1)
                print(f"You buy an energy token! You pay 500 gold. Total gold: {player.gold}")
                print(f"Energy tokens: {player.energy_tokens}. Max energy: {player.max_energy}")
            elif buy == "buy 3":
                if player.gold < 500:
                    print("You Don't Have 500 Gold")
                    continue
                player.gold -= 500
                player.add_health_token(1)
                print(f"You buy a health token! You pay 500 gold. Total gold: {player.gold}")
                print(f"Health tokens: {player.health_tokens}. Max health: {player.max_health}")
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