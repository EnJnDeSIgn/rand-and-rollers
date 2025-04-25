import os
import random
import subprocess
from langchain_ollama import OllamaLLM
from langchain_core.prompts import ChatPromptTemplate

# Folktale elements
folktale_functions = [
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

locations = ["at a remote filming location", "in a bustling city market", "on a serene mountain peak", "in ancient Egypt by the Nile",
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
    "in a japanese tea garden", "at the brazil slum", "with-in a federal quarantine", "on a highway underpass",
    "at an abandoned amusement park", "near a hundred stone pillars", "in a topiary garden", "near bison on a prairie",
    "in a bel air swimming pool", "at the reindeer training grounds", "near pink dolphins in the ocean", "in the town square with cats",
    "near a abandoned railroad track", "near a rocket launch site", "at high noon", "dark sky viewing area", "zoo for magical beasts",
    "two souls within the same body", "in a library", "black market on open ocean", "scattered across the world"
]

characters = ["An adventurous filmmaker", "A curious local guide", "A mysterious stranger", "The Pharaoh Sneferu", "A time-traveling historian",
    "A howling wolf", "A creative florist", "A talkative service representative", "A strict piano teacher", "A sweaty welder",
    "A fair referee", "An anxious pharmacist", "A loving veterinarian", "An artistic camera operator", "An animator of films",
    "An architect out of work", "A over worked bank teller", "A stoic mail carrier", "A funky nightclub DJ", "an oppressive ruler or regime",
    "A scuba diving instructor", "A rich antique appraiser", "An evil ethical hacker", "A hotel concierge", "A hotel housekeeper",
    "A grim doula", "An entertainment journalist", "A rude food critic", "A refined sommelier", "A bissy event planner",
    "A clean cut helicopter pilot", "A thin truck driver", "A famous radio personality", "A caring nurse", "An injured firefighter",
    "A political campaingn manager", "A hip microbrewery owner", "A social bartender", "An ignorant psychiatrist", "a peasant girl",
    "A helpful physical therapist", "An usher by night", "A social media manager", "A landscape designer", "A demon",
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
    "A massage therapist", "A goat farmer", "A butler", "A sniper", "A paleontologist", "A banshee", "incarnation of a god"
]
# Note Turings' that plot_points are ideas' and not literal, so they can be used more broadly or similarly to what they say. An Idea of what could happen...
plot_points = [
    "learn the importance of timeliness", "set out on a grand quest", "join a knitting circle", "discover a dead body",
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
    "vending machine dispenses very peculiar items instead", "encounter unexpected challenges"
]

complex_chas = ["brilliant, but impractical", "loyal, but resentful", "brokenhearted, but joking around", "slovenly, but expensively dressed",
    "burly, but squeamish", "polite, but aloof", "cheery, but unhelpful", "relaxed, but observant", "ambitious, but awkward",
    "depressed, but determined", "pompous, but kind", "lazy, but organized", "conceited, but charming", "busy, but unproductive",
    "calm, but depairing", "rude, but funny", "neat, but a pack rat", "timid, but vindictive", "altruistic, but impersonal",
    "over-dramatic, but persuasive", "haggard, but attractive", "quirky, but predictable", "angry, but civil",
    "creative, but money-minded", "obsessed, but dignified", "sarcastic, but loving", "homely, but stylish",
    "fun-loving, but goal-driven", "heroic, but bored", "immature, but a natural leader", "old, but youthful", "young, but crotchety",
    "finicky, but brutish", "well-bred, but brutish", "narcissistic, but honest about it", "triumphant, but uneasy",
    "frugal, but generous", "social, but always making faux pas", "stoic, but tenderhearted", "giggly, but wise",
    "evil, but sentimental", "grouchy, but encouraging", "chatty, but secretive", "soft-spoken, but vulgar", "idealistic, but petty",
    "frumpy, but dangerous", "disgusted, but amused", "exhausted, but excited", "innocent, but manipulative",
    "suspicious, but impressed", "uncanny, but irritating"
]

template = """
Answer the question below

Here is the conversation history or Buffer: {context}
query or new_history: {extra_context}
Question: {question}

Answer:
"""
model = OllamaLLM(model="gemma3:27b")
prompt = ChatPromptTemplate.from_template(template)
chain = prompt | model

# Working code buffer for `/code` functionality
working_code_buffer = ""

def run_command(command):
    try:
        result = subprocess.run(command, shell=True, check=True, text=True, capture_output=True)
        return result.stdout.strip()
    except subprocess.CalledProcessError as e:
        print(f"Error executing '{command}':", e)
        return ""

def save_code_to_file(code, filename):
    try:
        with open(filename, "w", encoding="utf-8") as f:
            f.write(code)
        print(f"Code saved to: {filename}")
    except Exception as e:
        print(f"Error saving code: {e}")

def handle_code_mode():
    """
    Interactive mode for writing and handling code, including AI assistance with user queries.
    """
    global working_code_buffer
    print("Entering code mode. Type '/exit' to leave, '/save <filename>' to save, '/view' to view, '/clear' to clear, '/ask' to ask the AI, or type code directly.")

    while True:
        user_input = input("\nCode> ").strip()
        
        if user_input.lower() in ["/exit", "/quit"]:
            print("Exiting code mode...")
            break
        elif user_input.lower().startswith("/save"):
            parts = user_input.split(" ", 1)
            if len(parts) > 1:
                save_code_to_file(working_code_buffer, parts[1].strip())
            else:
                print("Error: Provide a filename. Usage: /save <filename>")
        elif user_input.lower() == "/view":
            print("\nCurrent Code Buffer:\n" + (working_code_buffer if working_code_buffer else "(Empty)"))
        elif user_input.lower() == "/clear":
            working_code_buffer = ""
            print("Code buffer cleared.")
        elif user_input.lower() == "/ask":
            if not working_code_buffer.strip():
                print("The code buffer is empty. Add some code before asking the AI for assistance.")
            else:
                print("Enter your question about the code buffer, or press Enter to cancel:")
                query = input("Your Question: ").strip()
                if query:
                    print("Sending code Buffer and Query to EnJn's AI for Sweetie Assistance...")
                    try:
                        response = chain.invoke({
                            "context": working_code_buffer,
                            "extra_context": f"Question: {query}",
                            "question": "Provide detailed assistance based on the query and code buffer."
                        })
                        print("\nEnJnDeSIgn AI Response:\n", response)
                    except Exception as e:
                        print("Error during AI assistance:", e)
                else:
                    print("Query cancelled.")
        else:
            working_code_buffer += user_input + "\n"
            print("Code added to buffer.")

def select_folktale_functions():
    num_functions = random.randint(5, 13)
    selected_funcs = sorted(random.sample(folktale_functions, num_functions), key=lambda x: int(x.split(":")[0].split()[1]))
    selected_funcs = sorted(selected_funcs)
    return "\n".join(selected_funcs)

def select_additional_elements():
    selected_location = random.choice(locations)
    selected_character = random.choice(characters)
    selected_plot_point = random.choice(plot_points)
    selected_complex_cha = random.choice(complex_chas)
    return f"Location: {selected_location}\nCharacter: {selected_character}\nPlot Point: {selected_plot_point}\nComplex Characteristic: {selected_complex_cha}"

def generate_unique_filename(base_name="story", extension=".txt"):
    counter = 0
    while True:
        filename = f"{base_name}{counter}{extension}"
        if not os.path.exists(filename):
            return filename
        counter += 1

def save_story_to_file(story_text):
    filename = generate_unique_filename()
    try:
        with open(filename, "w", encoding="utf-8") as f:
            f.write(story_text)
        print(f"Story saved to: {filename}")
    except Exception as e:
        print(f"Error saving story to file: {e}")

def handle_ask_code():
    """
    Handle the /askcode command to provide AI assistance for code in the buffer.
    """
    global working_code_buffer
    if not working_code_buffer.strip():
        print("The code buffer is empty. Add some code before asking the AI for assistance.")
        return

    print("Enter your question or context about the code, or press Enter to cancel:")
    query = input("Your Question: ").strip()
    if query:
        print("Sending code buffer and query to EnJn's AI for Coder Sweetie assistance...")
        try:
            # AI generates suggestions, error detection, and corrections based on the query
            response = chain.invoke({
                "context": working_code_buffer,
                "extra_context": f"Question: {query}",
                "question": "Provide detailed code assistance, including suggestions, error correction, and refactoring tips."
            })
            print("\nEnJnDeSIgn Coder Response:\n", response)
        except Exception as e:
            print("Error during AI Coder assistance:", e)
    else:
        print("Query cancelled.")

def handle_ask_story():
    """
    Handle the /askstory command to provide AI assistance for story generation.
    """
    global working_code_buffer  # Use the same buffer for both code and story functionalities
    if not working_code_buffer.strip():
        print("The code buffer is empty. Adding random story elements...")
        working_code_buffer = select_folktale_functions() + "\n" + select_additional_elements()

    print("Enter your question or context for story assistance, or press Enter to cancel:")
    query = input("Your Question: ").strip()
    if query:
        print("Sending story query to EnJn's AI for StoryTeller Sweetie assistance...")
        try:
            story_prompt = f"""
            Create a detailed and engaging story based on the following elements:
            {working_code_buffer}

            User Query: {query}
            """
            response = chain.invoke({
                "context": working_code_buffer,
                "extra_context": f"Question: {query}",
                "question": story_prompt
            })
            print("\nEnJnDeSIgn StoryTeller Response:\n", response)
        except Exception as e:
            print("Error during AI StoryTeller assistance:", e)
    else:
        print("Query cancelled.")

def handle_conversation():
    """
    Enhanced conversation loop for generating stories and managing code functionality.
    """
    context = ""
    extra_context = "Story generation initiated..."

    while True:
        user_input = input("\nYou: ").strip()
        if user_input.lower() in ["/exit", "/quit"]:
            print("Exiting conversation...")
            break
        elif user_input.lower() == "/code":
            handle_code_mode()
        elif user_input.lower() == "/askcode":
            handle_ask_code()
        elif user_input.lower() == "/askstory":
            handle_ask_story()
        elif "/story" in user_input.lower():
            story_elements = select_folktale_functions() + "\n" + select_additional_elements()
            long_prompt = f"Create a very long and detailed story based on the following elements:\n{story_elements}"
            try:
                result = chain.invoke({"context": context, "extra_context": extra_context, "question": long_prompt})
                print("\nEnJnDeSIgn StoryTeller:\n", result)
                save_story_to_file(result)
            except Exception as e:
                print("Error generating story:", e)
        else:
            try:
                result = chain.invoke({"context": context, "extra_context": extra_context, "question": user_input})
                print("\nEnJnDeSIgn StoryTeller:", result)
                context += f"\nUser: {user_input}\nAI: {result}"
            except Exception as e:
                print("Error during conversation:", e)

if __name__ == "__main__":
    handle_conversation()   # AI Response