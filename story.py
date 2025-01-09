import random

# Define story elements
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
    "near a abandoned railroad track", "near a rocket launch site"
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
    "A helpful physical therapist", "An usher by night", "A social media manager", "A landscape designer",
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
    "A massage therapist", "A goat farmer", "A butler", "A sniper", "A paleontologist"
]
plot_points = [
    "discover a hidden treasure", "encounter unexpected challenges", "form an unlikely alliance", "uncover ancient secrets",
    "learn the importance of timeliness", "set out on a grand quest", "join a knitting circle", "discover a dead body",
    "repond to a letter", "exept an invitation", "leave a frustrating situation", "exit an awkward situation",
    "escape from a boring meeting", "pay there last repects at a funeral", "see the birth of there child",
    "excape the beginning of a disaster", "see the aftermath of a disaster", "poison someones wine", "play a game of hide and seak",
    "kiss there lover", "see a performance", "rescue there freind", "declare that they are in big trouble", "bet on a fight",
    "to find a new place to live", "arrest a perp", "see a courtroom trial", "get a job", "get away from a chaser", "wait for someone",
    "commit a crime", "teach another how to do something", "prepare to eat a meal", "attend a class", "attend a church service",
    "accept an award", "attend a birthday party"
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
    "suspicious, but impressed"
]
actions = [
    "started breaking into a building", "began washing blood out of there garment's", "picked up tempo playing a drum",
    "gambled away all there money playing roulette", "began playing with a dog", "viciously started killing a rat",
    "began butchering a deer they had killed", "chopped wood for the fire", "began planting seeds everywhere",
    "started digging a hasty grave", "nervously began searching for there lost key", "started hastly putting out the fire",
    "started vacuuming everwhere", "began dancing in the full moon light", "started sharpening there sword",
    "began stomping grapes for wine", "remembered parachuting last week", "started brushing there hair",
    "began chasing down a phantom", "began challenging everyone to a game of pool", "started singing as if in the shower",
    "started teaching a glass blowing class", "began riding a bicycle", "mischeviously smashed a window", "started packing a bag",
    "began unpacking there boxes of stuff", "began looking for stuff to buy",
    "stared doing the demon slayer form, he's just the warm up guy", "began polishing there silver items",
    "started fishing for there lunch", "began pitching there tent", "started building a fire",
    "began crossing on a precarious bridge", "started grilling fish to eat", "started modeling there new line",
    "began tearing down the wall"
]
clothes_ = [
    "a wedding gown that's seen better days", "sneakers splattered in some kind of goo",
    "an oversized tee shirt with a corporate logo", "a tee shirt from a tourist destination",
    "a bespoke three-piece suit", "gym socks with sandals", "a hat with a black veil",
    "a beekeeper's suit", "a full hazmat suit", "a fur coat", "a flannel shirt",
    "several necklaces", "sweat pants", "surgical scrubs", "a red bikini", "a tweed jacket",
    "a bright yellow polka dot dress", "a bunny costume", "a caftan",
    "a belt with a gigantic belt buckle", "bicycle shorts", "a chain mail shirt",
    "a schoolgirl's uniform", "a hawaiian shirt", "red stiletto shoes", "a ballerina",
    "faded jeans", "an all-white suit", "a very expensive watch", "a fanny pack",
    "a fresh flower", "combat fatigues", "lacy lingerie", "a festive christmas sweater",
    "dark sunglasses", "reading glasses on a chain", "doc martens", "flip flops",
    "an outfit of black leather", "plaid pants", "a trench coat", "a hard hat", "a beret",
    "a jean jacket covered in pins", "a beaded evening gown", "a coat that's two sizes too big",
    "a mechanic's coveralls", "tap shoes", "a hand-knitted scarf"
]

# Randomly select elements
location = random.choice(locations)
character = random.choice(characters)
plot_point = random.choice(plot_points)
complex_cha = random.choice(complex_chas)
action = random.choice(actions)
clothes = random.choice(clothes_)
character0 = random.choice(characters)
complex_cha0 = random.choice(complex_chas)
location0 = random.choice(locations)

# Assemble the story
story = f"{character} found themselves {location}. They were there to {plot_point}."

# Print the story
print(story)

story = f"There mood was extremely {complex_cha} as they {action}."

print(story)

story = f"After that they came across {clothes}, and put them on right away."

print(story)

story = f"Before the could finish {character0} that looked {complex_cha0}"

print(story)
print("quickly ran over and punched them in the nose, knocking them unconscious!")

story = f"There after they woke up and found them selfs {location0}."

print(story)