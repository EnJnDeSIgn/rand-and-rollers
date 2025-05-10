"""
Step 0: Creating a Theme
1. Identify the Main Topics: Determine the central ideas or themes for the story.
2. Determine the Messages: Decide what you want to communicate through these themes.
3. Develop a Theme Statement: Formulate a clear and concise statement summarizing the theme.
4. Weave the Themes into the Story: Use characters, settings, conflicts, and dialogue to highlight the themes naturally.
5. Reinforce Through Repetition: Subtly remind the reader of the themes throughout the story.
6. Show, Don’t Tell: Demonstrate the themes through actions and events rather than stating them explicitly.
7. Revise and Refine: After completing your first draft, review and refine how the themes are integrated.

Step 1: Turning Themes into an Outline
1. Introduction: Introduce the protagonist and their world. Establish the central themes.
2. Rising Action: Develop the protagonist's journey toward achieving their goals.
3. Climax: Create a pivotal moment where the protagonist faces a major challenge or realization.
4. Falling Action: Explore the consequences of the climax. Show how the protagonist deals with the outcomes.
5. Resolution: Conclude the protagonist's arc in a satisfying way.
6. Theme Integration: Ensure each scene and chapter reflects the central themes.
7. Review and Refine: Review the outline to ensure coherence and alignment with the themes.
"""
import os
import random
import time
import json
import tempfile
from langchain_ollama import OllamaLLM
from langchain_core.prompts import ChatPromptTemplate
import hashlib

# Define constants and reusable variables
MEMORY_FILE = "memory.json"
BUFFER_FILE = tempfile.NamedTemporaryFile(delete=False, mode='w+', encoding='utf-8')  # File buffer for /code functionality

# Templates for AI interaction
TEMPLATE = """
Answer the question below

Here is the conversation history or Buffer: {context}
query or new_history: {extra_context}
Question: {question}

Answer:
"""
MODEL = OllamaLLM(model="gemma3:27b", server_url="http://127.0.0.1:58305")
PROMPT = ChatPromptTemplate.from_template(TEMPLATE)
CHAIN = PROMPT | MODEL

# Story elements
FOLKTALE_FUNCTIONS = [
    "Function 27: The Miracle", "Function 14: The Prophecy", "Function 5: Tests, Allies, Enemies",
    "Function 19: The Sacrifice", "Function 9: The Road Back", "Function 6: Approach",
    "Function 1: The Call to Adventure", "Function 25: The Magic of Nature", "Function 13: The Quest",
    "Function 10: Resurrection", "Function 2: Refusal of the Call", "Function 30: The Destiny",
    "Function 20: The Revelation", "Function 12: The Transformation", "Function 26: The Hidden World",
    "Function 31: The Epilogue", "Function 24: The Rebirth", "Function 7: The Ordeal",
    "Function 8: Reward", "Function 3: Meeting the Mentor", "Function 16: The Darkest Hour",
    "Function 23: The Journey", "Function 18: The Return", "Function 17: The Ultimate Boon",
    "Function 15: The Magic Helper", "Function 21: The Betrayal", "Function 4: Crossing the Threshold",
    "Function 28: The Encounter", "Function 22: The Challenge", "Function 29: The Transformation",
    "Function 11: Return with the Elixir"
]
LOCATIONS = [
	"at a remote filming location", "in a bustling city market", "on a serene mountain peak", "in ancient Egypt by the Nile",
    "in a mystical forest", "in the middle of the night", "at the shopping mall", "on an old bridge", "in a penthouse suite",
    "in an enclosed elevator", "at a sidewalk cafe", "at a skateboard park", "at a neighborhood basketball court",
    "on the farmhouse porch", "in the slag heaps", "in a graffiti covered tunnel", "near a wishing well", "on a rooftop party",
    "at a trampoline park", "at the nail salon", "in an outdated kitchen", "in a storage unit", "in a gazebo at a park",
    "at an amphitheater", "on london bridge", "at the grand canyon", "in central park", "near a cedar chest", "at a hunting lodge",
    "at a bicycle repair shop", "at a chocolate shop", "at a pizza parlar", "in a day care", "at new york's times square",
    "outside the eiffel tower", "at an outdoor bazaar", "in a courtyard in new orleans", "at a doggy day care", "in the school cafeteria",
    "near a janitor's closet", "in a coat closet", "on the factory floor", "in the motel lobby", "in an old cemetery", "at a junkyard",
    "at a recycling center", "at a petting zoo", "in a bank vault", "in an attorney's office", "in a rainforest", "on a desert plain",
    "on the ice fields of antarctica", "near the lava fields in iceland", "in an insurance office", "in a filthy motel room",
    "in a underwater hotel", "in the oval office", "in a window seat", "in a meadow full of fireflies", "at a boatyard",
    "on a sea glass covered beach", "looking down from a balcony", "on top of a water slide", "on the great wall of china",
    "looking down from a treehouse", "at a rock concert", "up in a barn hayloft", "in a opera house balcony seat",
    "wait at a auto repair shop", "near a liquor store", "in the principal's office", "in a space colony's agricultural dome",
    "in a japanese tea garden", "at the brazil slum", "with-in a federal quarantine", "on a highway underpass", "the catacombs",
    "at an abandoned amusement park", "near a hundred stone pillars", "in a topiary garden", "near bison on a prairie",
    "in a bel air swimming pool", "at the reindeer training grounds", "near pink dolphins in the ocean", "in the town square with cats",
    "near a abandoned railroad track", "near a rocket launch site", "at high noon", "dark sky viewing area", "zoo for magical beasts",
    "two souls within the same body", "in a library", "black market on open ocean", "scattered across the world", "on an island",
    "in the middle of a lava lake", "a pitiful excuse for a castle", "at this auction", "tower they are building", "A garden of obelisks"
]
CHARACTERS = [
	"An adventurous filmmaker", "A curious local guide", "A mysterious stranger", "The Pharaoh Sneferu", "A time-traveling historian",
    "A howling wolf", "A creative florist", "A talkative service representative", "A strict piano teacher", "A sweaty welder",
    "A fair referee", "An anxious pharmacist", "A loving veterinarian", "An artistic camera operator", "An animator of films",
    "An architect out of work", "A over worked bank teller", "A stoic mail carrier", "A funky nightclub DJ", "an oppressive ruler or regime",
    "A scuba diving instructor", "A rich antique appraiser", "An evil ethical hacker", "A hotel concierge", "A hotel housekeeper",
    "A grim doula", "An entertainment journalist", "A rude food critic", "A refined sommelier", "A bissy event planner",
    "A clean cut helicopter pilot", "A thin truck driver", "A famous radio personality", "A caring nurse", "An injured firefighter",
    "A political campaingn manager", "A hip microbrewery owner", "A social bartender", "An ignorant psychiatrist", "a peasant girl",
    "A helpful physical therapist", "An usher by night", "A social media manager", "A landscape designer", "A demon", "sentient bees",
    "A moonlighting house painter", "A band camp counselor", "A sharp FBI agent", "A lonly private tutor", "A old professor",
    "A salty marine biologist", "A real estate agent", "A chubby plumber", "The U.S. ambassador", "A small-town mayor", "A kind librarian",
    "A brilliant meteorologist", "An adventurous travel writer", "A flamboyant interior designer", "A dark surgeon", "A judgemental judge",
    "A mixed martial arts fighter", "A surly secret service agent", "A nice nanny", "An organized organic farmer", "sweetie pie"
    "A forensic investigator", "A sarcastic lawyer", "An olfactorius perfume designer", "An overnight retail stocker",
    "A country club dishwasher", "A stand-up comedian", "A theme park princess", "A heroic stunt performer", "A coast guard lifeguard",
    "An E.O.D technician", "A flight attendant", "A park ranger", "A food truck owner", "An innocent fortune teller",
    "A hedge fund trader", "A casino dealer", "A corporate recruiter", "A fast food worker", "A personal trainer", "The local mortician",
    "A translator", "A nutritionist", "A speech pathologist", "An animal shelter worker", "A zookeeper", "A racehorse sanctuary manager",
    "A belly dancer", "A robotics engineer", "A NASCAR mechanic", "A tennis instructor", "A rabbi", "A logger", "A web developer",
    "A videogame developer", "An orchestra conductor", "A volcanologist", "A shoe sales associate", "A police officer",
    "A massage therapist", "A goat farmer", "A butler", "A sniper", "A paleontologist", "A banshee", "incarnation of a god",
    "A keeper of bee hive's", "A particular tree in the forest", "A changeling", "this muse inspires", "An artist", "A musican"
]
PLOT_POINTS = ["learn the importance of timeliness", "set out on a grand quest", "join a knitting circle", "discover a dead body",
    "repond to a letter", "exept an invitation", "leave a frustrating situation", "exit an awkward situation", "no one remembers it now",
    "escape from a boring meeting", "pay there last repects at a funeral", "see the birth of there child", "can smell fear",
    "excape the beginning of a disaster", "see the aftermath of a disaster", "poison someones wine", "play a game of hide and seak",
    "kiss there lover", "see a performance", "rescue there freind", "declare that they are in big trouble", "bet on a fight",
    "to find a new place to live", "arrest a perp", "see a courtroom trial", "get a job", "get away from a chaser", "wait for someone",
    "commit a crime", "teach another how to do something", "prepare to eat a meal", "attend a class", "attend a church service",
    "accept an award", "attend a birthday party", "brothers sell them into slavery", "prophecy tells a army to attack",
    "a nobody slays a supposedly unbeatable enemy", "father the king is jealous", "banished from a paradise", "can smell jealousy",
    "series of terrible plagues", "squandered there inheritance", "arrival of a letter", "an escape from a prison",
    "a game or contest", "rescues another", "clearly is in big trouble", "an all-out battle scene", "someone is arrested",
    "gets fired from a job", "a chase scene", "a busy street scene", "in a triumphant situation", "comes across a significant object",
    "a fae, a giant, and a gnome walk into a tavern", "survives being struck by lightning", "map burned onto there back",
    "hard to resist the urge to sing about the desires of any nearby", "hideous monster is nice when you get to know them",
    "considered bad luck in their country", "magical spell transforms", "man is sent to kidnap", "things don't go according to plan",
    "arrives at the school for priests", "usually a happy occasion", "there plays predicted future", "now she's the only one",
    "expecting that the hero would get killed", "she commands the fireflies", "school for wizards is a scam", "can smell embarrassment",
    "prevent civil war by betraying friend or king", "who were turned into wolves", "he commands the dragonflies",
    "there library was like an arsenal sometimes", "it absorbs all light within about a mile radius", "tries to get a second chance",
    "poisons anyone who has", "have been locked out of", "being able to weaken other's spells", "who has been rendered mute",
    "symptoms affects only one species", "there voice compels everyone else to obey", "turned out to be a terrible idea",
    "travels easily between land of living and land of dead", "entrusting the quest to", "anyone who touches the", "first suspects they",
    "will die of thirst, no matter how much they drink", "although the hero dosen't know it", "in run by a cadre of supernatural beings",
    "all emotions have specific scents to him", "desperately wishes to avoid", "four long-lost kingdoms", "in is trouble for being disloyal",
    "item erases wearer's bad memories as they are made", "good reason to bring evil guy back to life", "falls in love... with him",
    "thunderstorms bring him power", "loses gradually over long stretches of clear weather", "bloodshed is needed to inspire the uprising",
    "statue appeared in the middle of town", "how it got there", "profound bonds between steed and rider", "they command the butterflies",
    "makes invincible for a time, will also be death of owner", "they are the spirits of the waterfalls", "once belonged to someone else",
    "cut down a tree and freed a sprite imprisoned there", "hear another's thoughts for the rest of their lives",
    "who kills her will inherit her power", "Giant peacocks stand guard at the gate", "walls talk, if you touch in right places",
    "wants to poison sacred well", "severed hand wields fearsome power", "the chosen one is just a good liar", "can mask any smell",
    "pretended to be dead to escape", "must sacrifice one of there warriors without telling them why", "forgot to take off ring",
    "cross desert by taking form of sandstorms", "decides unworthy to inherit the throne", "no one ventures here without a mask",
    "fool triumphs in battle over enemies", "appease a monster", "rid city of it's undesirable residents", "makes a shocking confession",
    "waters of river make anyone drunk", "police actually know all about there secret, supernatural activities", "who may be good or evil",
    "recruits new servants among souls yet to be born", "remembers past lives...and future ones too", "gargoyles no longer stone",
    "good witch under the impression it was a good spell", "breaks oath, was stupid oath anyway", "angel reluctant to deliver message",
    "ancient symbol tattooed on body has unforeseen consequences", "hero's captors surprisingly polite", "myth based on a true story",
    "who entered this cave have never emerged again", "companions that love practical jokes", "servant accidentally murders master",
    "stranger offers to take place at executioner's block", "party in the catacombs!", "in middle of duel, embarrassing thing happens",
    "called for all witches to be punished, not realizing his wife is one", "has survived to present day", "armor has special opening",
    "doesn't know why they can read the runes", "curse was lifted, but wants it back", "from different warring speciesa, they're in lover",
    "she's the princess, nobody believes her", "corporation have a necromancer on payroll", "path changes course as you walk it",
    "indoctrinated in cult from childhood, now has doubts", "magical sword was melted down to make various objects",
    "astounding things for sale at the goblin market", "musician can kill, heal or resurrect with there song", "uncover ancient secrets",
    "committing surprising acts in their sleep", "cure current plague...if it can be found", "who live in bottom of ocean, come to surface",
    "attempt to rescue someone puts mission in jeopardy", "divine figure in a vision tells to lead army to victory",
    "bring back to life by taking his/her place in underworld", "fake works of art become more valuable than the real works",
    "defects in hope to bring war to quicker resolution", "becomes true if enough people believe it", "turned into object by magic",
    "to open door, they must use key whittled out of there own bones", "doesn't know why they have stopped aging",
    "digs up an ancient treasure, but original owner shows up to take it back", "allies tricked into attacking one another",
    "discover stone spheres with strange markings", "takes souvenirs from their fallen enemies, which proves to be their downfall",
    "an escape or revolt against forced marriage", "powers don't work when their drunk", "discover a hidden treasure", 
    "flowers from this garden are the most precious commodities in the realm...for a very good reason", "form an unlikely alliance",
    "vending machine dispenses very peculiar items instead", "encounter unexpected challenges", "noble sacrifice, now resents it as ghost",
    "has advantages and disadvantages", "battle is a religious observance", "magical object has turned out to be junk",
    "unmanned ship sails itself into harbor", "so many birds or butterflies migrate across this land that for days, it darkens the skies",
    "cursed to permanent darkness, daytime, fog, wind or lightning", "sibling rivalry is intense when it's between twin demigods",
    "people are bidding a lot more than money", "different purpose than what they were all told", "person's spirit is connected to a",
    "been hiding in the catacombs for years", "find the fossil or skeleton of a mythical creature", "returned to their own kind",
    "possesses a body, then unable to get out of it", "the river has a soul of its own", "ran away, living under assumed name",
    "bring this new king to the throne", "totally incompetent", "inspires to great work", "when she leaves them, they become",
    "assigned to be bodyguard to someone on whom the fate of the world depends", "can never find out that's what they are really doing",
    "no one knows who made it", "what the stone pillars signify", "good things and bad things about having an invisible pet",
    "leaves of this tree make great parachutes", "evil ruler is forcing to forge ancient prophecy that foretells his glorious reign",
    "finds a century-old catalog, attempts to place an order, and succeeds", "hero killed halfway through, and sidekick takes over",
    "suitable caretakers and providers before they are allowed to procreate", "must prove to the government",
    "it's such a hassle that many people opt for government-arranged marriages instead", "prompts rapid mutations in the human species",
    "must be approved by a department of the government", "broker a deal that many see as unfair", "added to public water supply",
    "discovered a way to communicate directly with", "is now lab-created", "history is changeing, like WWI and II didn't happen now",
    "undergo modifications including extra limbs, cartoon-like features, and so on", "believing s/he will fit in better there"
]
COMPLEX_CHAS = ["brilliant, but impractical", "loyal, but resentful", "brokenhearted, but joking around", "slovenly, but expensively dressed",
    "burly, but squeamish", "polite, but aloof", "cheery, but unhelpful", "relaxed, but observant", "ambitious, but awkward",
    "depressed, but determined", "pompous, but kind", "lazy, but organized", "conceited, but charming", "busy, but unproductive",
    "calm, but depairing", "rude, but funny", "neat, but a pack rat", "timid, but vindictive", "altruistic, but impersonal",
    "over-dramatic, but persuasive", "haggard, but attractive", "quirky, but predictable", "angry, but civil", " honest, but tactless",
    "creative, but money-minded", "obsessed, but dignified", "sarcastic, but loving", "homely, but stylish", "confident, but insecure",
    "fun-loving, but goal-driven", "heroic, but bored", "immature, but a natural leader", "old, but youthful", "young, but crotchety",
    "finicky, but brutish", "well-bred, but brutish", "narcissistic, but honest about it", "triumphant, but uneasy", "fearless, but naive",
    "frugal, but generous", "social, but always making faux pas", "stoic, but tenderhearted", "giggly, but wise", "logical, but indecisive",
    "evil, but sentimental", "grouchy, but encouraging", "chatty, but secretive", "soft-spoken, but vulgar", "idealistic, but petty",
    "frumpy, but dangerous", "disgusted, but amused", "exhausted, but excited", "innocent, but manipulative", "manipulative, but kind",
    "suspicious, but impressed", "uncanny, but irritating", "clever, but reckless", "gentle, but intimidating", "charming, but unreliable",
    "humble, but attention-seeking", "passionate, but obsessive", "sarcastic, but easily hurt", "mysterious, but predictable",
    "reserved, but deeply emotional", "optimistic, but delusional", "cunning, but sentimental", "brave, but self-destructive",
    "patient, but passive-aggressive", "eloquent, but insincere", "resourceful, but wasteful", "diligent, but unimaginative",
    "witty, but cynical", "elegant, but clumsy", "powerful, but insecure", "strict, but fair", "gregarious, but lonely",
    "conventional, but rebellious", "optimistic, but anxious", "introverted, but charismatic", "restless, but complacent",
    "vigilant, but trusting", "refined, but uncouth", "spontaneous, but cautious", "sensitive, but callous", "generous, but envious",
    "realistic, but dreamy", "formal, but playful", "stubborn, but yielding", "determined, but easily distracted", "critical, but supportive",
    "competitive, but collaborative", "vulnerable, but guarded", "principled, but pragmatic", "romantic, but detached",
    "observant, but oblivious", "scholarly, but unlearned", "pessimistic, but hopeful", "authoritative, but indecisive",
    "pensive, but frivolous", "courageous, but fearful", "graceful, but awkward", "traditional, but innovative", "independent, but needy"
]

PROPP_FUNCTIONS = {
    "1. Absentation": {
        "description": "A family member leaves the home or is absent.",
        "example_token": "The hero's parents leave the house for the day."
    },
    "2. Interdiction": {
        "description": "The hero is warned against doing something.",
        "example_token": "The hero is told not to touch the magical artifact."
    },
    "3. Violation": {
        "description": "The interdiction is violated.",
        "example_token": "The hero touches the artifact despite the warning."
    },
    "4. Reconnaissance": {
        "description": "The villain seeks information about the hero.",
        "example_token": "The villain sends a spy to learn about the hero's weaknesses."
    },
    "5. Delivery": {
        "description": "The villain receives information about the hero.",
        "example_token": "The spy informs the villain about the hero's secret weapon."
    },
    "6. Trickery": {
        "description": "The villain attempts to deceive the hero.",
        "example_token": "The villain disguises themselves as a friend to trick the hero."
    },
    "7. Complicity": {
        "description": "The hero is deceived and unwittingly helps the villain.",
        "example_token": "The hero reveals their secret to the disguised villain."
    },
    "8. Villainy": {
        "description": "The villain causes harm or injury to someone.",
        "example_token": "The villain destroys the hero's village."
    },
    "9. Lack": {
        "description": "A need or desire is identified (e.g., the hero lacks something).",
        "example_token": "The hero realizes they need the magical sword to defeat the villain."
    },
    "10. Mediation": {
        "description": "The hero is made aware of the lack or villainy.",
        "example_token": "A wise elder informs the hero about the missing sword."
    },
    "11. Counteraction": {
        "description": "The hero decides to act against the villain or fulfill the lack.",
        "example_token": "The hero vows to retrieve the magical sword."
    },
    "12. Departure": {
        "description": "The hero leaves home to begin their quest.",
        "example_token": "The hero sets out on a journey to find the magical sword."
    },
    "13. First Function of the Donor": {
        "description": "The hero is tested, attacked, or interrogated by a magical helper.",
        "example_token": "The hero encounters a troll who tests their courage."
    },
    "14. Hero’s Reaction": {
        "description": "The hero responds to the test or interrogation.",
        "example_token": "The hero answers the troll's riddle and gains their trust."
    },
    "15. Receipt of a Magical Agent": {
        "description": "The hero acquires a magical item or power.",
        "example_token": "The troll gives the hero a map to the hidden sword."
    },
    "16. Guidance": {
        "description": "The hero is led to the location of their quest.",
        "example_token": "The troll guides the hero to the enchanted forest."
    },
    "17. Struggle": {
        "description": "The hero and villain engage in direct combat.",
        "example_token": "The hero battles the villain's minions in the forest."
    },
    "18. Branding": {
        "description": "The hero is marked or injured during the struggle.",
        "example_token": "The hero is scarred by the villain's blade."
    },
    "19. Victory": {
        "description": "The villain is defeated.",
        "example_token": "The hero slays the villain's minions."
    },
    "20. Liquidation": {
        "description": "The original lack or villainy is resolved.",
        "example_token": "The hero retrieves the magical sword."
    },
    "21. Return": {
        "description": "The hero begins their journey back home.",
        "example_token": "The hero starts their trek back to the village."
    },
    "22. Pursuit": {
        "description": "The hero is pursued by the villain or their allies.",
        "example_token": "The villain's minions chase the hero through the forest."
    },
    "23. Rescue": {
        "description": "The hero is saved from pursuit.",
        "example_token": "A friendly dragon helps the hero escape the minions."
    },
    "24. Unrecognized Arrival": {
        "description": "The hero returns home unrecognized.",
        "example_token": "The hero returns to the village in disguise."
    },
    "25. False Claim": {
        "description": "A false hero claims the hero's achievements.",
        "example_token": "An imposter claims they retrieved the magical sword."
    },
    "26. Difficult Task": {
        "description": "The hero is given a challenge to prove themselves.",
        "example_token": "The hero must solve a puzzle to prove their identity."
    },
    "27. Solution": {
        "description": "The hero successfully completes the challenge.",
        "example_token": "The hero solves the puzzle and proves their identity."
    },
    "28. Recognition": {
        "description": "The hero is recognized for their achievements.",
        "example_token": "The villagers recognize the hero as the true savior."
    },
    "29. Exposure": {
        "description": "The false hero is exposed.",
        "example_token": "The imposter is revealed as a fraud."
    },
    "30. Transfiguration": {
        "description": "The hero is given a new appearance or status.",
        "example_token": "The hero is crowned as the new ruler of the village."
    },
    "31. Punishment": {
        "description": "The villain is punished for their actions.",
        "example_token": "The villain is banished from the kingdom."
    },
    "32. Wedding": {
        "description": "The hero is rewarded, often through marriage or celebration.",
        "example_token": "The hero marries the prince/princess and they celebrate their victory."
    }
}

# Utility Functions
def load_memory():
    """Load memory from the memory file."""
    if os.path.exists(MEMORY_FILE):
        with open(MEMORY_FILE, "r", encoding="utf-8") as f:
            return json.load(f)
    return []

def save_memory(memory):
    """Save memory to the memory file."""
    with open(MEMORY_FILE, "w", encoding="utf-8") as f:
        json.dump(memory, f, indent=4)

def add_to_memory(data):
    """Add structured data to memory."""
    try:
        memory = load_memory()
        memory.append(data)
        save_memory(memory)
        print("Memory updated successfully.")
    except Exception as e:
        print(f"Error updating memory: {e}")

def handle_file_buffer(action, content=None):
    """Handle operations on the file buffer."""
    if action == "read":
        BUFFER_FILE.seek(0)
        return BUFFER_FILE.read()
    elif action == "write" and content:
        BUFFER_FILE.write(content + "\n")
        BUFFER_FILE.flush()
    elif action == "clear":
        BUFFER_FILE.seek(0)
        BUFFER_FILE.truncate()

# Core Functions
def select_random_elements():
    """Select random elements for story generation."""
    return {
        "folktale_function": random.choice(FOLKTALE_FUNCTIONS),
        "location": random.choice(LOCATIONS),
        "character": random.choice(CHARACTERS),
        "plot_point": random.choice(PLOT_POINTS),
        "complex_characteristic": random.choice(COMPLEX_CHAS)
    }

def generate_story_elements():
    """Generate formatted story elements."""
    elements = select_random_elements()
    return f"""
    Location: {elements['location']}
    Character: {elements['character']}
    Plot Point: {elements['plot_point']}
    Complex Characteristic: {elements['complex_characteristic']}
    """


def tokenize_content(content):
    """
    Tokenize the given content into a list of words or symbols.
    """
    return content.split()  # Simple tokenization by splitting on whitespace

import hashlib

def is_duplicate(memory, content):
    """
    Check if the content already exists in memory by comparing hashes.
    """
    content_hash = hashlib.sha256(content.encode()).hexdigest()
    for entry in memory:
        if entry.get("hash") == content_hash:
            return True  # Content already exists
    return False

def handle_train_command():
    """
    Enhanced /train command to save tokens and improve model learning.
    """
    # Read the buffer content
    buffer_content = handle_file_buffer("read").strip()

    if not buffer_content:
        print("The buffer is empty. Add content before using /train.")
        return

    try:
        # Load existing memory
        memory = load_memory()

        # Check for duplication
        if is_duplicate(memory, buffer_content):
            print("The buffer content is already saved in memory. No new data added.")
            return

        # Tokenize the content
        tokens = tokenize_content(buffer_content)

        # Create a new entry
        new_entry = {
            "timestamp": time.ctime(),
            "type": "code" if buffer_content.startswith("def") else "text",  # Guess type based on content
            "content": buffer_content,
            "tokens": tokens,
            "hash": hashlib.sha256(buffer_content.encode()).hexdigest(),
            "token_count": len(tokens)
        }

        # Add to memory
        add_to_memory(new_entry)
        print(f"Buffer content saved to memory successfully. Token count: {len(tokens)}")

    except Exception as e:
        print(f"Error during /train operation: {e}")

def generate_propp_story():
    """Generate a story using Propp's 31 functions."""
    story = []
    
    # Select a random number of functions between 5 and 13
    num_functions = random.randint(5, 13)
    selected_functions = random.sample(list(PROPP_FUNCTIONS.keys()), num_functions)
    
    # Sort the selected functions by their numeric order
    sorted_funcs = sorted(selected_functions, key=lambda x: int(x.split(".")[0]))

    # Create the story using the sorted functions
    for func in sorted_funcs:
        data = PROPP_FUNCTIONS[func]
        story.append(f"{func}: {data['example_token']}")

    return "\n".join(story)

# Example usage
#print(generate_propp_story())

def handle_code_mode():
    """Interactive mode for writing and handling code."""
    print("Entering code mode. Available commands: '/exit', '/save <filename>', '/view', '/clear', '/ask', '/train'.")

    while True:
        user_input = input("\nCode> ").strip()

        if user_input.lower() in ["/exit", "/quit"]:
            print("Exiting code mode...")
            break
        elif user_input.startswith("/save"):
            _, filename = user_input.split(" ", 1)
            try:
                with open(filename.strip(), "w", encoding="utf-8") as f:
                    f.write(handle_file_buffer("read"))
                print(f"Code saved to: {filename.strip()}")
            except Exception as e:
                print(f"Error saving code: {e}")
        elif user_input == "/view":
            print("\nCurrent Code Buffer:\n" + (handle_file_buffer("read") or "(Empty)"))
        elif user_input == "/clear":
            handle_file_buffer("clear")
            print("Code buffer cleared.")
        elif user_input == "/ask":
            handle_ask_code()
        elif user_input == "/train":
            code_buffer = handle_file_buffer("read")
            handle_train_command()
            if code_buffer.strip():
                add_to_memory({"timestamp": time.ctime(), "content": code_buffer, "type": "code"})
                print("Buffer content saved to memory.")
            else:
                print("Code buffer is empty. Nothing to train.")
        else:
            handle_file_buffer("write", user_input)
            print("Code added to buffer.")

def handle_ask_code():
    """Handle the /ask command to query the AI about the code buffer."""
    code_buffer = handle_file_buffer("read")
    if not code_buffer.strip():
        print("The code buffer is empty. Add some code before asking the AI for assistance.")
        return

    query = input("Your Question: ").strip()
    if query:
        print("Sending code buffer and query to the AI...")
        try:
            response = CHAIN.invoke({"context": code_buffer, "extra_context": f"Question: {query}", "question": "Provide assistance of code_buffer."})
            print("\nAI Response:\n", response)
        except Exception as e:
            print("Error during AI assistance:", e)
    else:
        print("Query cancelled.")

def handle_ask_story():
    """Handle the /story command to query the AI for a story."""
    query = input("Your Story Prompt: ").strip()
    if query:
        story_elements = generate_story_elements()
        try:
            response = CHAIN.invoke({"context": story_elements, "extra_context": query, "question": generate_propp_story()})
            print("\nGenerated Story:\n", response)
        except Exception as e:
            print("Error generating story:", e)
    else:
        print("Story generation cancelled.")

def handle_conversation():
    """Conversation loop for interactive storytelling and code management."""
    print("Entering conversation mode. Type '/exit' to quit or '/code' to switch to code mode.")
    while True:
        user_input = input("\nYou: ").strip()
        if user_input.lower() in ["/exit", "/quit"]:
            print("Exiting conversation mode...")
            break
        elif user_input.lower() == "/code":
            handle_code_mode()
        elif user_input.lower() == "/story":
            handle_ask_story()
        else:
            try:
                response = CHAIN.invoke({"context": "", "extra_context": user_input, "question": user_input})
                print("\nAI Response:\n", response)
            except Exception as e:
                print("Error during conversation:", e)

# Main Execution
if __name__ == "__main__":
    handle_conversation()