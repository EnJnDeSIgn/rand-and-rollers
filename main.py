import random
import subprocess
from langchain_ollama import OllamaLLM
from langchain_core.prompts import ChatPromptTemplate

# word equations'
# for story fuction do the intro and each function one user enter key press at a time

# 31 functions of the folktale defined here.
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

locations = [
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
    "in a japanese tea garden", "at the brazil slum", "with-in a federal quarantine", "on a highway underpass",
    "at an abandoned amusement park", "near a hundred stone pillars", "in a topiary garden", "near bison on a prairie",
    "in a bel air swimming pool", "at the reindeer training grounds", "near pink dolphins in the ocean", "in the town square with cats",
    "near a abandoned railroad track", "near a rocket launch site", "at high noon", "dark sky viewing area", "zoo for magical beasts",
    "two souls within the same body", "in a library"
]

characters = [
    "An adventurous filmmaker", "A curious local guide", "A mysterious stranger", "The Pharaoh Sneferu", "A time-traveling historian",
    "A howling wolf", "A creative florist", "A talkative service representative", "A strict piano teacher", "A sweaty welder",
    "A fair referee", "An anxious pharmacist", "A loving veterinarian", "An artistic camera operator", "An animator of films",
    "An architect out of work", "A over worked bank teller", "A stoic mail carrier", "A funky nightclub DJ",
    "A scuba diving instructor", "A rich antique appraiser", "An evil ethical hacker", "A hotel concierge", "A hotel housekeeper",
    "A grim doula", "An entertainment journalist", "A rude food critic", "A refined sommelier", "A bissy event planner",
    "A clean cut helicopter pilot", "A thin truck driver", "A famous radio personality", "A caring nurse", "An injured firefighter",
    "A political campaingn manager", "A hip microbrewery owner", "A social bartender", "An ignorant psychiatrist",
    "A helpful physical therapist", "An usher by night", "A social media manager", "A landscape designer", "A demon",
    "A moonlighting house painter", "A band camp counselor", "A sharp FBI agent", "A lonly private tutor", "A old professor",
    "A salty marine biologist", "A real estate agent", "A chubby plumber", "The U.S. ambassador", "A small-town mayor", "A kind librarian",
    "A brilliant meteorologist", "An adventurous travel writer", "A flamboyant interior designer", "A dark surgeon", "A judgemental judge",
    "A mixed martial arts fighter", "A surly secret service agent", "A nice nanny", "An organized organic farmer",
    "A forensic investigator", "A sarcastic lawyer", "An olfactorius perfume designer", "An overnight retail stocker",
    "A country club dishwasher", "A stand-up comedian", "A theme park princess", "A heroic stunt performer", "A coast guard lifeguard",
    "An E.O.D technician", "A flight attendant", "A park ranger", "A food truck owner", "An innocent fortune teller",
    "A hedge fund trader", "A casino dealer", "A corporate recruiter", "A fast food worker", "A personal trainer", "The local mortician",
    "A translator", "A nutritionist", "A speech pathologist", "An animal shelter worker", "A zookeeper", "A racehorse sanctuary manager",
    "A belly dancer", "A robotics engineer", "A NASCAR mechanic", "A tennis instructor", "A rabbi", "A logger", "A web developer",
    "A videogame developer", "An orchestra conductor", "A volcanologist", "A shoe sales associate", "A police officer",
    "A massage therapist", "A goat farmer", "A butler", "A sniper", "A paleontologist", "A banshee"
]

plot_points = [
    "discover a hidden treasure", "encounter unexpected challenges", "form an unlikely alliance", "uncover ancient secrets",
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
    "travels easily between land of living and land of dead", "entrusting the quest to", "anyone who touches the",
    "will die of thirst, no matter how much they drink", "although the hero dosen't know it", "in run by a cadre of supernatural beings",
    "all emotions have specific scents to him", "desperately wishes to avoid", "four long-lost kingdoms"
]

complex_chas = [
    "brilliant, but impractical", "loyal, but resentful", "brokenhearted, but joking around", "slovenly, but expensively dressed",
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

# Updated prompt template: extra_context can inject our batch file output and function details
template = """
Answer the question below

Here is the conversation history: {context}
{extra_context}
Question: {question}

Answer:
"""

# Instantiate the model and chain.
model = OllamaLLM(model="gemma3")
prompt = ChatPromptTemplate.from_template(template)
chain = prompt | model

def run_main_bat():
    """
    Executes the run_main.bat file and captures its output.
    """
    try:
        result = subprocess.run(
            r"run_main.bat",  # Use absolute path if necessary.
            shell=True,
            check=True,
            text=True,
            capture_output=True  # Capture stdout for later use.
        )
        print("DEBUG: run_main.bat executed successfully.")
        return result.stdout
    except subprocess.CalledProcessError as e:
        print("Error executing run_main.bat:", e)
        return ""

def run_elegenV1_exe():
    """
    Executes the ELEgenV1.exe file and captures its output.
    """
    try:
        result = subprocess.run(
            r"ELEgenV1.exe",  # Use absolute path if necessary.
            shell=True,
            check=True,
            text=True,
            capture_output=True  # Capture stdout for later use.
        )
        print("DEBUG: ELEgenV1.exe executed successfully.")
        return result.stdout
    except subprocess.CalledProcessError as e:
        print("Error executing ELEgenV1.exe:", e)
        return ""

def select_folktale_functions():
    """
    Randomly selects a number (between 5 and 13) of folktale functions in order.
    Returns them as a formatted string.
    """
    num_functions = random.randint(5, 13)
    selected_funcs = sorted(random.sample(folktale_functions, num_functions), key=lambda x: int(x.split(":")[0].split()[1]))
    return "\n".join(selected_funcs)

def select_additional_elements():
    """
    Randomly selects additional story elements from locations, characters, plot points, and complex characteristics.
    Returns them as a formatted string.
    """
    selected_location = random.choice(locations)
    selected_character = random.choice(characters)
    selected_plot_point = random.choice(plot_points)
    selected_complex_cha = random.choice(complex_chas)
    
    return f"Location: {selected_location}\nCharacter: {selected_character}\nPlot Point: {selected_plot_point}\nComplex Characteristic: {selected_complex_cha}"

def handle_conversation():
    """
    Enhanced conversation loop.
    When the user types "story":
      - Run run_main.bat to generate story elements.
      - Capture and combine its output with randomly selected folktale functions and additional elements.
      - Modify the question prompt to instruct the language model to create a complete story.
    For other inputs, continue with the standard conversation.
    """
    context = ""
    extra_context = ""
    print("Welcome to the Enjn Design StoryTeller!")
    print("Type 'exit' to quit or 'story' to generate a folktale story with random functions.")
    
    while True:
        user_input = input("You: ")
        if user_input.lower() == "exit":
            break

        if user_input.lower() == "story":
            # Run the batch file to generate story elements.
            run_main_bat()
            # Capture the output from ELEgenV1.exe.
            ele_output = run_elegenV1_exe()
            print("DEBUG: ELEgenV1.exe output captured:\n", ele_output)
            # Randomly select folktale functions.
            selected = select_folktale_functions()
            # Randomly select additional story elements.
            additional_elements = select_additional_elements()
            # Combine both sources into the extra context.
            extra_context = (
                f"Story Generator Output:\n{ele_output}\n\n"
                f"Selected Folktale Functions:\n{selected}\n"
                f"Additional Elements:\n{additional_elements}\n"
            )
            # Instruct the LM to generate a complete folktale story.
            modified_question = ("Using the above story generator output, the selected folktale functions, and the additional elements, "
                                 "please generate a complete folktale story.")
            invocation = {
                "context": context,
                "extra_context": extra_context,
                "question": modified_question
            }
        else:
            extra_context = ""
            invocation = {
                "context": context,
                "extra_context": extra_context,
                "question": user_input
            }
        
        print("DEBUG: Invocation object being sent to chain.invoke():\n", invocation)
        
        # Invoke the chain.
        try:
            result = chain.invoke(invocation)
        except Exception as ex:
            print("Error during chain.invoke:", ex)
            result = "[Error]"
        print("\nEnjnDesign StoryTeller:", result, "\n")
        context += f"\nUser: {user_input}\nAI: {result}"
        
        # Optional: Reset conversation history for story-generation commands to avoid building huge context.
        if user_input.lower() == "story":
            context = ""  # or trim context as needed
    
if __name__ == "__main__":
    handle_conversation()