import random

# Player classes and attributes
player_class = ["swordman", "wizard"]
s_life = 150
s_energy = 100
w_life = 100
w_energy = 150
weapon_damage = 0.0
total_gold = 0

# Random encounter functions
def encounter_friendly_npc():
    global s_life, w_life
    print("You meet a friendly NPC who gives you advice and restores some of your health.")
    if player_class == "swordman":
        global s_life
        s_life = min(s_life + 20, 150)
    else:
        global w_life
        w_life = min(w_life + 20, 100)
        
def encounter_enemy():
    global s_life, w_life, weapon_damage
    print("You encounter an enemy! Prepare for battle!")
    enemy_health = random.randint(20, 50)
    if player_class == "swordman":
        player_health = s_life
    else:
        player_health = w_life
    while player_health > 0 and enemy_health > 0:
        attack = input("Do you want to attack? (y/n) ").lower()
        if attack == "y":
            enemy_health -= weapon_damage
            print(f"You hit the enemy! Enemy health is now {enemy_health}.")
            if enemy_health > 0:
                player_health -= random.randint(5, 15)
                print(f"The enemy hits back! Your health is now {player_health}.")
        elif attack == "n":
            print("You fled the battle!")
            break
        else:
            print("Incorrect letter type y or n")
            continue
    if player_health <= 0:
        print("You have been defeated by the enemy!")
    elif enemy_health <= 0:
        print("You defeated the enemy!")
        if player_class == "swordman":
            print("Your a swordman ")
            print("life " + str(player_health))
            print("energy " + str(s_energy))
            print(f"You have {total_gold} total gold!")
        else:
            print("Your a wizard")
            print("life " + str(player_health))
            print("energy " + str(w_energy))
            print(f"You have {total_gold} total gold!")

def encounter_treasure():
    global total_gold
    print("You find a treasure chest filled with gold!")
    gold = random.randint(10, 100)
    total_gold = total_gold + gold
    print(f"You receive {gold} gold.")
    print(f"You have {total_gold} total gold!")

def encounter_trap():
    global s_life, w_life
    print("You encounter a trap! You lose some health.")
    if player_class == "swordman":
        global s_life
        s_life = max(s_life - random.randint(10, 30), 0)
        print(f"Your health is now {s_life}.")
    else:
        global w_life
        w_life = max(w_life - random.randint(10, 30), 0)
        print(f"Your health is now {w_life}.")

def random_encounter():
    encounters = [encounter_friendly_npc, encounter_enemy, encounter_treasure, encounter_trap]
    encounter = random.choice(encounters)
    encounter()

# Main game loop
player_class = input("Would you like to play a swordman or wizard? ").lower()
if player_class == "swordman":
    print("Your a swordman ")
    print("life " + str(s_life))
    print("energy " + str(s_energy))
    print(f"You have {total_gold} total gold!")
else:
    print("Your a wizard")
    print("life " + str(w_life))
    print("energy " + str(w_energy))
    print(f"You have {total_gold} total gold!")
town = ["shop", "inn", "gate"]
while True:
    go0 = input("Where would you like to go? shop inn gate or quit ").lower()
    
    if go0 == "quit":
        print("Good Bye!")
        break
    elif go0 == "shop":
        print("Welcome to the shop! Type buy and number")
        buy0 = input("rusty sword or wand. 0 gold. buy 0 ").lower()
        if player_class == "swordman" and buy0 == "buy 0":
                print("You buy the rusty sword!")
                weapon_damage = (s_life * .1)
                continue
        elif player_class == "wizard" and buy0 == "buy 0":
                print("You buy the rusty wand!")
                weapon_damage = (w_energy * .1)
                continue
        else:
            print("Incorrect word used")
    elif go0 == "inn":
        print("Welcome to the inn!")
        sleep = input("Would you like to rest for free? y/n ").lower()
        if sleep == "y" and player_class == "swordman":
            s_life = 150
            s_energy = 100
            player_health = s_life
            print("You rest and recover")
            print("Your a swordman ")
            print("life " + str(player_health))
            print("energy " + str(s_energy))
            print("Weapon damage! " + str(weapon_damage))
            print(f"You have {total_gold} total gold!")
        elif sleep == "y" and player_class == "wizard":
            w_life = 100
            w_energy = 150
            player_health = w_life
            print("You rest and recover")
            print("Your a wizard")
            print("life " + str(player_health))
            print("energy " + str(w_energy))
            print("Weapon damage! " + str(weapon_damage))
            print(f"You have {total_gold} total gold!")
        elif sleep == "n":
            print("You leave the inn!")
            continue
        else:
            print("Incorrect letter used, y or n")
            continue
    elif go0 == "gate":
        print("You leave the city! What direction would you like to go? or town?")
        while True:
            go1 = input("direction a, b, c or town ").lower()
            if go1 == "a":
                random_encounter()
                continue
            elif go1 == "b":
                random_encounter()
                continue
            elif go1 == "c":
                random_encounter()
                continue
            elif go1 == "town":
                print("You go back too town!")
                break
            else:
                print("Incorrect, use a, b, c or town")
                continue
    else:
        print("Incorrect word used")
    continue