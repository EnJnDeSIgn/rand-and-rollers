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

#!# Gl(A)ss . Intell(I)gence. LLM Story Teller interaction Software #!#
Dedecated to rachel, dean and luke for there lies and storys about me!
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
MEMORY_FILE = "memory.json"     # File for /train fuctionality, Must be opened and deleted for next use... for re-writing code tokens
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
    "in the middle of a lava lake", "a pitiful excuse for a castle", "at this auction", "tower they are building", "A garden of obelisks",
    "at a underwater amusement park"
]
CHARACTERS = [
	"An adventurous filmmaker", "A curious local guide", "A mysterious stranger", "The Pharaoh Sneferu", "A time-traveling historian",
    "A howling wolf", "A creative florist", "A talkative service representative", "A strict piano teacher", "A sweaty welder",
    "A fair referee", "An anxious pharmacist", "A loving veterinarian", "An artistic camera operator", "An animator of films",
    "An architect out of work", "A over worked bank teller", "A stoic mail carrier", "A funky nightclub DJ", "an oppressive ruler or regime",
    "A scuba diving instructor", "A rich antique appraiser", "An evil ethical hacker", "A hotel concierge", "A hotel housekeeper",
    "A grim doula", "An entertainment journalist", "A rude food critic", "A refined sommelier", "A bissy event planner", "Two spies",
    "A clean cut helicopter pilot", "A thin truck driver", "A famous radio personality", "A caring nurse", "An injured firefighter",
    "A political campaingn manager", "A hip microbrewery owner", "A social bartender", "An ignorant psychiatrist", "a peasant girl",
    "A helpful physical therapist", "An usher by night", "A social media manager", "A landscape designer", "A demon", "sentient bees",
    "A moonlighting house painter", "A band camp counselor", "A sharp FBI agent", "A lonly private tutor", "A old professor",
    "A salty marine biologist", "A real estate agent", "A chubby plumber", "The U.S. ambassador", "A small-town mayor", "A kind librarian",
    "A brilliant meteorologist", "An adventurous travel writer", "A flamboyant interior designer", "A dark surgeon", "A judgemental judge",
    "A mixed martial arts fighter", "A surly secret service agent", "A nice nanny", "An organized organic farmer", "sweetie pie",
    "A forensic investigator", "A sarcastic lawyer", "An olfactorius perfume designer", "An overnight retail stocker", "A smart ring",
    "A country club dishwasher", "A stand-up comedian", "A theme park princess", "A heroic stunt performer", "A coast guard lifeguard",
    "An E.O.D technician", "A flight attendant", "A park ranger", "A food truck owner", "An innocent fortune teller",
    "A hedge fund trader", "A casino dealer", "A corporate recruiter", "A fast food worker", "A personal trainer", "The local mortician",
    "A translator", "A nutritionist", "A speech pathologist", "An animal shelter worker", "A zookeeper", "A racehorse sanctuary manager",
    "A belly dancer", "A robotics engineer", "A NASCAR mechanic", "A tennis instructor", "A rabbi", "A logger", "A web developer",
    "A videogame developer", "An orchestra conductor", "A volcanologist", "A shoe sales associate", "A police officer",
    "A massage therapist", "A goat farmer", "A butler", "A sniper", "A paleontologist", "A banshee", "incarnation of a god",
    "A keeper of bee hive's", "A particular tree in the forest", "A changeling", "this muse inspires", "An artist", "A musican"
]
PLOT_POINTS = {Birthday
    "learn_timeliness": {
        "title": "Learn Timeliness",
        "description": "The protagonist discovers the importance of acting at the right time."
    },
    "begin_quest": {
        "title": "Begin Quest",
        "description": "The protagonist sets out on a significant journey or mission."
    },
    "join_knitting_circle": {
        "title": "Join a Knitting Circle",
        "description": "The protagonist becomes part of a close-knit group, fostering new connections."
    },
    "discover_dead_body": {
        "title": "Discover a Dead Body",
        "description": "The protagonist stumbles upon a mysterious or shocking death."
    },
    "respond_to_letter": {
        "title": "Respond to a Letter",
        "description": "The protagonist receives and reacts to a crucial message."
    },
    "accept_invitation": {
        "title": "Accept Invitation",
        "description": "The protagonist agrees to attend an important meeting or event."
    },
    "leave_frustrating_situation": {
        "title": "Leave Frustrating Situation",
        "description": "The protagonist escapes from a stressful or unfulfilling scenario."
    },
    "exit_awkward_situation": {
        "title": "Exit Awkward Situation",
        "description": "The protagonist finds a way out of an embarrassing or uncomfortable moment."
    },
    "forgotten_event": {
        "title": "Forgotten Event",
        "description": "Something important is forgotten by everyone but holds hidden significance."
    },
    "escape_boring_meeting": {
        "title": "Escape Boring Meeting",
        "description": "The protagonist flees from a tedious or unproductive gathering."
    },
    "attend_funeral": {
        "title": "Attend Funeral",
        "description": "The protagonist pays respects at a significant loss or ending."
    },
    "witness_birth": {
        "title": "Witness Birth",
        "description": "The protagonist experiences the beginning of new life or hope."
    },
    "sense_fear": {
        "title": "Sense Fear",
        "description": "The protagonist detects fear in themselves or others, influencing their actions."
    },
    "escape_disaster_start": {
        "title": "Escape Disaster Start",
        "description": "The protagonist avoids the initial impact of a catastrophe."
    },
    "see_disaster_aftermath": {
        "title": "See Disaster Aftermath",
        "description": "The protagonist surveys the consequences of a major calamity."
    },
    "poison_wine": {
        "title": "Poison Wine",
        "description": "Someone introduces danger or betrayal through a poisoned drink."
    },
    "play_hide_and_seek": {
        "title": "Play Hide and Seek",
        "description": "A game of hiding and searching leads to unexpected discoveries."
    },
    "kiss_lover": {
        "title": "Kiss Lover",
        "description": "A romantic or pivotal connection is made through a kiss."
    },
    "see_performance": {
        "title": "See a Performance",
        "description": "The protagonist attends or witnesses a notable show or act."
    },
    "rescue_friend": {
        "title": "Rescue a Friend",
        "description": "The protagonist saves someone close to them from danger or trouble."
    },
    "declare_big_trouble": {
        "title": "Declare Big Trouble",
        "description": "The protagonist realizes and announces that the situation is dire."
    },
    "bet_on_fight": {
        "title": "Bet on a Fight",
        "description": "A wager is placed on the outcome of a conflict or competition."
    },
    "find_new_home": {
        "title": "Find a New Home",
        "description": "The protagonist searches for and discovers a place to belong."
    },
    "arrest_perpetrator": {
        "title": "Arrest Perpetrator",
        "description": "A wrongdoer is captured or justice begins to be served."
    },
    "see_courtroom_trial": {
        "title": "See Courtroom Trial",
        "description": "The protagonist witnesses or participates in a legal battle."
    },
    "get_job": {
        "title": "Get a Job",
        "description": "The protagonist secures new employment or responsibility."
    },
    "flee_chaser": {
        "title": "Flee a Chaser",
        "description": "A pursuit begins as the protagonist tries to escape."
    },
    "wait_for_someone": {
        "title": "Wait for Someone",
        "description": "Patience and anticipation shape the protagonist's next move."
    },
    "commit_crime": {
        "title": "Commit a Crime",
        "description": "The protagonist or another character breaks the law or moral code."
    },
    "teach_skill": {
        "title": "Teach a Skill",
        "description": "Knowledge or abilities are passed from one character to another."
    },
    "prepare_meal": {
        "title": "Prepare a Meal",
        "description": "Cooking or sharing food brings characters together or sets the scene."
    },
    "attend_class": {
        "title": "Attend Class",
        "description": "Learning or training advances the protagonist's growth."
    },
    "attend_church_service": {
        "title": "Attend Church Service",
        "description": "A moment of reflection or spiritual gathering influences the story."
    },
    "accept_award": {
        "title": "Accept Award",
        "description": "Recognition is given for achievement or valor."
    },
    "attend_birthday_party": {
        "title": "Attend Birthday Party",
        "description": "A celebration that can reveal secrets or turn the plot."
    },
    "sold_into_slavery": {
        "title": "Sold into Slavery",
        "description": "The protagonist is betrayed by family and sold into captivity."
    },
    "prophecy_spurs_attack": {
        "title": "Prophecy Spurs Attack",
        "description": "A prophecy inspires an army to launch an assault."
    },
    "underdog_defeats_enemy": {
        "title": "Underdog Defeats Enemy",
        "description": "A seemingly insignificant character overcomes an unbeatable foe."
    },
    "king_jealous_of_child": {
        "title": "King's Jealousy",
        "description": "A ruler’s envy of their own child or heir sets the conflict in motion."
    },
    "banished_from_paradise": {
        "title": "Banished from Paradise",
        "description": "The protagonist is cast out from an ideal place or state."
    },
    "sense_jealousy": {
        "title": "Sense Jealousy",
        "description": "The protagonist perceives jealousy in themselves or others, changing the story’s course."
    },
    "plagues_strike_land": {
        "title": "Plagues Strike the Land",
        "description": "A series of disasters or plagues brings suffering to many."
    },
    "squander_inheritance": {
        "title": "Squander Inheritance",
        "description": "A character wastes their fortune or resources, causing hardship."
    },
    "letter_arrives": {
        "title": "Letter Arrives",
        "description": "A crucial letter is received, altering the protagonist’s direction."
    },
    "prison_escape": {
        "title": "Prison Escape",
        "description": "The protagonist or another character breaks out of captivity."
    },
    "game_or_contest": {
        "title": "Game or Contest",
        "description": "A competition is held, with stakes that impact the story."
    },
    "rescue_another": {
        "title": "Rescue Another",
        "description": "The protagonist saves someone else from peril or danger."
    },
    "in_big_trouble": {
        "title": "Clearly in Big Trouble",
        "description": "The protagonist faces obvious and immediate danger."
    },
    "all_out_battle": {
        "title": "All-Out Battle",
        "description": "A large, climactic battle erupts, involving many sides."
    },
    "arrest_occurs": {
        "title": "Arrest Occurs",
        "description": "A character is apprehended by authorities or others."
    },
    "fired_from_job": {
        "title": "Fired from Job",
        "description": "The protagonist or another character loses their employment."
    },
    "chase_scene": {
        "title": "Chase Scene",
        "description": "A thrilling pursuit unfolds, with high stakes."
    },
    "busy_street_scene": {
        "title": "Busy Street Scene",
        "description": "Events unfold in a chaotic, bustling public space."
    },
    "triumphant_situation": {
        "title": "Triumphant Situation",
        "description": "The protagonist experiences a moment of victory or celebration."
    },
    "finds_significant_object": {
        "title": "Finds Significant Object",
        "description": "A meaningful or mysterious object is discovered, shifting the plot."
    },
    "tavern_meeting": {
        "title": "Tavern Meeting",
        "description": "Unlikely characters meet in a tavern, sparking a new adventure."
    },
    "survives_lightning": {
        "title": "Survives Lightning Strike",
        "description": "A character miraculously survives being struck by lightning."
    },
    "map_burned_on_back": {
        "title": "Map Burned on Back",
        "description": "A vital map or clue is permanently marked on a character’s body."
    },
    "irresistible_song_urge": {
        "title": "Irresistible Urge to Sing",
        "description": "Characters are compelled to sing about their desires, revealing secrets."
    },
    "nice_monster": {
        "title": "Nice Monster",
        "description": "A seemingly frightening creature turns out to be kind upon closer acquaintance."
    },
    "bad_luck_culture": {
        "title": "Considered Bad Luck",
        "description": "Something or someone is viewed as bad luck in the culture, complicating matters."
    },
    "magical_spell_transforms": {
        "title": "Magical Spell Transforms",
        "description": "A magical spell causes an unexpected transformation in a character or object."
    },
    "kidnapping_mission": {
        "title": "Kidnapping Mission",
        "description": "A character is sent on a mission to kidnap someone, leading to conflict."
    },
    "plans_go_awry": {
        "title": "Plans Go Awry",
        "description": "Things do not go according to plan, forcing characters to improvise."
    },
    "arrive_at_priest_school": {
        "title": "Arrive at School for Priests",
        "description": "The protagonist enters a place of religious training, facing new challenges."
    },
    "happy_occasion": {
        "title": "Usually a Happy Occasion",
        "description": "The story features an event that is typically joyful or festive."
    },
    "play_predicts_future": {
        "title": "Play Predicts Future",
        "description": "A performance or play reveals clues about upcoming events."
    },
    "last_one_left": {
        "title": "Now She's the Only One",
        "description": "The protagonist finds herself as the sole survivor or remaining member of a group."
    },
    "hero_expected_to_die": {
        "title": "Hero Expected to Die",
        "description": "It is widely believed that the hero will not survive the ordeal."
    },
    "commands_fireflies": {
        "title": "Commands the Fireflies",
        "description": "A character has power over fireflies, possibly using them for guidance or magic."
    },
    "wizard_school_scam": {
        "title": "Wizard School is a Scam",
        "description": "A place of magical learning is revealed to be fraudulent or deceptive."
    },
    "sense_embarrassment": {
        "title": "Sense Embarrassment",
        "description": "A character detects embarrassment in others, affecting social dynamics."
    },
    "betray_to_prevent_civil_war": {
        "title": "Betrayal to Prevent Civil War",
        "description": "A difficult betrayal is undertaken to avert a greater conflict."
    },
    "turned_into_wolves": {
        "title": "Turned into Wolves",
        "description": "Characters are transformed into wolves, changing their fate."
    },
    "commands_dragonflies": {
        "title": "Commands the Dragonflies",
        "description": "A character can control dragonflies for magical or practical reasons."
    },
    "library_like_arsenal": {
        "title": "Library Like an Arsenal",
        "description": "A library is described as being filled with powerful or dangerous resources."
    },
    "light_absorbing_artifact": {
        "title": "Light-Absorbing Artifact",
        "description": "An object or area absorbs all light, creating an unnatural darkness."
    },
    "second_chance_attempt": {
        "title": "Tries to Get a Second Chance",
        "description": "A character strives to redeem themselves or reverse past mistakes."
    },
    "poisonous_touch": {
        "title": "Poisonous Touch",
        "description": "A character’s touch or action is lethal, poisoning whoever they contact."
    },
    "locked_out": {
        "title": "Locked Out",
        "description": "A character is unable to gain access to an important place or resource."
    },
    "weaken_others_spells": {
        "title": "Weaken Others' Spells",
        "description": "A character has the ability to diminish the power of others’ magic."
    },
    "rendered_mute": {
        "title": "Rendered Mute",
        "description": "A character loses the ability to speak, affecting communication."
    },
    "species_specific_symptoms": {
        "title": "Species-Specific Symptoms",
        "description": "A mysterious condition affects only one species, creating tension."
    },
    "compelling_voice": {
        "title": "Compelling Voice",
        "description": "A character’s voice exerts irresistible influence over others."
    },
    "terrible_idea_revealed": {
        "title": "Turned Out to Be a Terrible Idea",
        "description": "An action or plan is revealed to have disastrous consequences."
    },
    "travel_between_worlds": {
        "title": "Travel Between Worlds",
        "description": "A character moves effortlessly between the land of the living and the land of the dead."
    },
    "entrust_quest": {
        "title": "Entrust the Quest",
        "description": "A quest or important mission is handed over to another character."
    },
    "touches_object_effect": {
        "title": "Touch Triggers Effect",
        "description": "Whoever touches a particular object experiences a significant or magical consequence."
    },
    "first_suspects": {
        "title": "First Suspects",
        "description": "A character is the initial suspect in a mystery or crime."
    },
    "endless_thirst": {
        "title": "Endless Thirst",
        "description": "A character will die of thirst no matter how much they drink."
    },
    "hidden_truth_hero": {
        "title": "Hidden Truth from Hero",
        "description": "There is crucial information unknown to the hero but clear to others."
    },
    "supernatural_beings_rule": {
        "title": "Supernatural Cadre in Charge",
        "description": "A powerful group of supernatural beings secretly runs the setting."
    },
    "emotions_have_scents": {
        "title": "Emotions Have Scents",
        "description": "A character perceives each emotion as having a distinct and recognizable scent."
    },
    "desperate_to_avoid": {
        "title": "Desperately Wishes to Avoid",
        "description": "A character goes to great lengths to avoid a person, place, or event."
    },
    "four_lost_kingdoms": {
        "title": "Four Lost Kingdoms",
        "description": "The existence or rediscovery of four long-lost kingdoms shapes the story."
    },
    "trouble_for_disloyalty": {
        "title": "Trouble for Being Disloyal",
        "description": "A character faces serious consequences for their perceived or actual disloyalty."
    },
    "memory_erasing_item": {
        "title": "Memory-Erasing Item",
        "description": "An artifact erases the wearer’s bad memories as they are made."
    },
    "resurrect_evil_for_good": {
        "title": "Resurrect Evil for Good",
        "description": "There is a compelling reason to bring a villain back to life."
    },
    "falls_in_love_with_him": {
        "title": "Falls in Love with Him",
        "description": "A character unexpectedly falls deeply in love, affecting their choices."
    },
    "thunderstorms_give_power": {
        "title": "Thunderstorms Grant Power",
        "description": "A character draws strength or magical ability from thunderstorms."
    },
    "loses_strength_without_storms": {
        "title": "Loses Strength Without Storms",
        "description": "A character’s power fades during long periods of clear weather."
    },
    "bloodshed_inspires_uprising": {
        "title": "Bloodshed Inspires Uprising",
        "description": "Violence or sacrifice becomes the catalyst for rebellion."
    },
    "statue_appears_in_town": {
        "title": "Statue Appears in Town",
        "description": "A mysterious statue suddenly appears in the center of town, stirring curiosity."
    },
    "how_statue_got_there": {
        "title": "How Statue Arrived",
        "description": "The story delves into the origins and journey of a mysterious statue."
    },
    "steed_rider_bond": {
        "title": "Profound Steed-Rider Bond",
        "description": "An extraordinary and mystical bond exists between a rider and their steed."
    },
    "commands_butterflies": {
        "title": "Commands Butterflies",
        "description": "A character possesses the magical ability to control butterflies."
    },
    "temporary_invincibility_with_cost": {
        "title": "Temporary Invincibility with Cost",
        "description": "A character becomes invincible for a time, but the power will eventually lead to their demise."
    },
    "spirits_of_waterfalls": {
        "title": "Spirits of the Waterfalls",
        "description": "Characters discover or interact with mystical beings who are the spirits of waterfalls."
    },
    "object_has_past_owner": {
        "title": "Object's Past Owner",
        "description": "A significant object once belonged to someone else, and its history influences current events."
    },
    "free_sprite_from_tree": {
        "title": "Free Sprite from Tree",
        "description": "Cutting down a tree releases a magical sprite that was imprisoned inside."
    },
    "permanent_mind_link": {
        "title": "Permanent Mind Link",
        "description": "A character gains the ability to hear another's thoughts for the rest of their lives."
    },
    "inherit_power_by_killing": {
        "title": "Inherit Power by Killing",
        "description": "Whoever kills a specific character will inherit her power."
    },
    "giant_peacocks_guard_gate": {
        "title": "Giant Peacocks Guard Gate",
        "description": "Enormous peacocks stand sentry at an important entrance or threshold."
    },
    "talking_walls": {
        "title": "Talking Walls",
        "description": "Walls communicate secrets to those who know how to touch them properly."
    },
    "poison_sacred_well": {
        "title": "Poison Sacred Well",
        "description": "A character schemes to contaminate a revered or magical water source."
    },
    "severed_hand_power": {
        "title": "Severed Hand Wields Power",
        "description": "A dismembered hand possesses and conveys fearsome magical abilities."
    },
    "chosen_one_is_liar": {
        "title": "Chosen One is a Liar",
        "description": "The prophesied 'chosen one' is deceptive or manipulates the truth."
    },
    "mask_any_smell": {
        "title": "Mask Any Smell",
        "description": "A character has the power or device to conceal any scent, for good or ill."
    },
    "faked_death_to_escape": {
        "title": "Faked Death to Escape",
        "description": "A character pretends to be dead in order to avoid danger or pursuit."
    },
    "sacrifice_warrior_secretly": {
        "title": "Sacrifice Warrior Secretly",
        "description": "A leader must sacrifice one of their warriors without revealing the reason."
    },
    "forgot_remove_ring": {
        "title": "Forgot to Remove Ring",
        "description": "A character's forgetfulness about a ring leads to magical or dangerous consequences."
    },
    "sandstorm_travel": {
        "title": "Sandstorm Travel",
        "description": "A character crosses a desert by transforming into or riding a sandstorm."
    },
    "unworthy_to_inherit": {
        "title": "Unworthy to Inherit",
        "description": "A character is deemed unfit to receive a throne, legacy, or power."
    },
    "mask_required_to_enter": {
        "title": "Mask Required to Enter",
        "description": "No one dares to enter a place unless they wear a mask, for reasons mysterious or cultural."
    },
    "fool_victorious_in_battle": {
        "title": "Fool Triumphs in Battle",
        "description": "An underestimated or foolish character wins a significant battle."
    },
    "appease_monster": {
        "title": "Appease the Monster",
        "description": "Characters must placate or befriend a monster to avoid disaster."
    },
    "rid_city_of_undesirables": {
        "title": "Rid City of Undesirables",
        "description": "An effort is made to expel or exile unwanted inhabitants from a city."
    },
    "shocking_confession": {
        "title": "Shocking Confession",
        "description": "A character reveals a secret that dramatically alters the situation."
    },
    "river_water_causes_drunkenness": {
        "title": "River Water Causes Drunkenness",
        "description": "Drinking from a certain river inexplicably causes intoxication."
    },
    "police_know_supernatural": {
        "title": "Police Know the Supernatural",
        "description": "Authorities are aware of—and possibly complicit in—magical or supernatural activities."
    },
    "ambiguous_morality": {
        "title": "Ambiguous Morality",
        "description": "A character's true alignment or intentions remain unclear; they may be good or evil."
    },
    "recruit_unborn_servants": {
        "title": "Recruit Unborn Servants",
        "description": "A character gathers followers from among souls yet to be born."
    },
    "remembers_past_and_future_lives": {
        "title": "Remembers Past and Future Lives",
        "description": "A character recalls not only their previous existences, but their future ones too."
    },
    "gargoyles_come_to_life": {
        "title": "Gargoyles No Longer Stone",
        "description": "Gargoyles awaken and move, no longer fixed as stone statues."
    },
    "well_intentioned_witch_magic": {
        "title": "Good Witch, Bad Spell",
        "description": "A well-meaning witch believes they cast a helpful spell, but unintended consequences arise."
    },
    "breaks_oath_foolishly": {
        "title": "Breaks Oath, Foolishly",
        "description": "A character breaks an oath, though it was an unwise promise to begin with."
    },
    "reluctant_angel_messenger": {
        "title": "Reluctant Angel Messenger",
        "description": "An angel hesitates or struggles with delivering an important message."
    },
    "symbol_tattoo_consequences": {
        "title": "Ancient Symbol Tattoo Consequences",
        "description": "A mysterious tattoo brings unforeseen results to the character bearing it."
    },
    "polite_captors": {
        "title": "Polite Captors",
        "description": "The hero's captors treat them with unexpected kindness or courtesy."
    },
    "myth_true_story": {
        "title": "Myth Based on True Story",
        "description": "A myth within the story is revealed to have a basis in real events."
    },
    "cave_of_no_return": {
        "title": "Cave of No Return",
        "description": "Anyone who enters a certain cave is said to never return."
    },
    "prankster_companions": {
        "title": "Prankster Companions",
        "description": "The protagonist's allies are fond of playing practical jokes."
    },
    "servant_kills_master": {
        "title": "Servant Accidentally Kills Master",
        "description": "A servant unintentionally causes the death of their employer."
    },
    "stranger_takes_execution_spot": {
        "title": "Stranger Takes Place at Execution",
        "description": "A mysterious outsider offers to take someone else's place at an execution."
    },
    "catacombs_party": {
        "title": "Party in the Catacombs",
        "description": "A celebration or gathering occurs in eerie underground tunnels."
    },
    "duel_embarrassment": {
        "title": "Duel Embarrassment",
        "description": "Something humiliating happens in the midst of a dramatic duel."
    },
    "witch_hunt_family_reveal": {
        "title": "Witch Hunt, Family Reveal",
        "description": "A witch hunt is called for, not realizing that the instigator’s own spouse is a witch."
    },
    "survived_to_present": {
        "title": "Survived to Present Day",
        "description": "A character or artifact has persisted or survived from the distant past to now."
    },
    "special_armor_opening": {
        "title": "Special Armor Opening",
        "description": "A suit of armor has a unique or secretive opening, important to the plot."
    },
    "read_runes_without_reason": {
        "title": "Reads Runes Without Reason",
        "description": "A character can interpret ancient runes, though they do not know why."
    },
    "wants_curse_restored": {
        "title": "Wants Curse Restored",
        "description": "After a curse is lifted, a character desires its return."
    },
    "forbidden_cross_species_love": {
        "title": "Forbidden Cross-Species Love",
        "description": "Characters from warring or incompatible species fall in love."
    },
    "unbelieved_princess": {
        "title": "Unbelieved Princess",
        "description": "A true princess is not believed by anyone, complicating her journey."
    },
    "corporate_necromancer": {
        "title": "Corporate Necromancer",
        "description": "A corporation employs a necromancer to manage supernatural affairs."
    },
    "shifting_path": {
        "title": "Shifting Path",
        "description": "A path changes its course as one walks it, making navigation unpredictable."
    },
    "cult_doubts": {
        "title": "Cult Indoctrination and Doubt",
        "description": "Raised in a cult, a character begins to question their beliefs."
    },
    "sword_melted_for_objects": {
        "title": "Sword Melted for Objects",
        "description": "A magical sword is destroyed and its material used to create various items."
    },
    "goblin_market_goods": {
        "title": "Goblin Market Wonders",
        "description": "Bizarre and astounding things are for sale at the goblin market."
    },
    "musician_song_power": {
        "title": "Musician's Deadly Song",
        "description": "A musician’s song can kill, heal, or resurrect those who hear it."
    },
    "uncover_ancient_secrets": {
        "title": "Uncover Ancient Secrets",
        "description": "Hidden truths from ages past are discovered, altering the present."
    },
    "sleep_acts": {
        "title": "Surprising Acts in Sleep",
        "description": "A character commits astonishing or risky acts while asleep."
    },
    "cure_current_plague": {
        "title": "Cure the Plague",
        "description": "A cure must be found to stop a devastating plague."
    },
    "sea_people_surface": {
        "title": "Sea People Surface",
        "description": "Beings who live at the bottom of the ocean rise to the surface world."
    },
    "rescue_jeopardizes_mission": {
        "title": "Rescue Jeopardizes Mission",
        "description": "An attempt to save someone puts the entire mission at risk."
    },
    "visionary_leadership": {
        "title": "Visionary Leadership",
        "description": "A divine figure in a vision instructs a character to lead an army to victory."
    },
    "underworld_sacrifice": {
        "title": "Underworld Sacrifice",
        "description": "One must take another's place in the underworld to bring them back to life."
    },
    "fake_art_more_valuable": {
        "title": "Fake Art More Valuable",
        "description": "Counterfeit works of art become more prized than the originals."
    },
    "defection_for_peace": {
        "title": "Defection for Peace",
        "description": "A character defects from their side in hopes of ending a war sooner."
    },
    "belief_becomes_reality": {
        "title": "Belief Becomes Reality",
        "description": "Something becomes true simply because enough people believe in it."
    },
    "turned_to_object_by_magic": {
        "title": "Turned Into Object by Magic",
        "description": "A character is magically transformed into an object."
    },
    "bone_key_opens_door": {
        "title": "Bone Key Opens Door",
        "description": "To unlock a door, a character must use a key carved from their own bones."
    },
    "mysterious_agelessness": {
        "title": "Mysterious Agelessness",
        "description": "A character stops aging and cannot explain why."
    },
    "treasure_claimed_by_owner": {
        "title": "Ancient Owner Claims Treasure",
        "description": "After digging up a buried treasure, the original owner returns to reclaim it."
    },
    "allies_tricked_into_conflict": {
        "title": "Allies Tricked Into Conflict",
        "description": "Allies are deceived and end up fighting each other."
    },
    "stone_spheres_discovered": {
        "title": "Stone Spheres Discovered",
        "description": "Characters find stone spheres carved with strange, possibly magical markings."
    },
    "souvenirs_lead_to_downfall": {
        "title": "Souvenirs Lead to Downfall",
        "description": "Taking mementos from fallen foes ultimately brings disaster."
    },
    "escape_forced_marriage": {
        "title": "Escape Forced Marriage",
        "description": "A character escapes or leads a revolt against an unwanted marriage."
    },
    "powers_fail_when_drunk": {
        "title": "Powers Fail When Drunk",
        "description": "A character's supernatural abilities stop working when they are intoxicated."
    },
    "hidden_treasure_found": {
        "title": "Hidden Treasure Found",
        "description": "A long-lost or concealed treasure is discovered, changing the story."
    },
    "precious_garden_flowers": {
        "title": "Precious Garden Flowers",
        "description": "Flowers from a particular garden are the realm's most valuable commodity, for a mysterious reason."
    },
    "unlikely_alliance": {
        "title": "Unlikely Alliance",
        "description": "Characters form a partnership or alliance that no one expected."
    },
    "peculiar_vending_machine": {
        "title": "Peculiar Vending Machine",
        "description": "A vending machine dispenses strange or magical items instead of what’s expected."
    },
    "unexpected_challenges": {
        "title": "Unexpected Challenges",
        "description": "Characters face sudden and unforeseen obstacles."
    },
    "noble_ghost_resentment": {
        "title": "Noble Ghost's Resentment",
        "description": "A ghost who made a noble sacrifice now resents their fate."
    },
    "has_advantages_and_disadvantages": {
        "title": "Has Advantages and Disadvantages",
        "description": "A character, item, or situation provides both benefits and drawbacks."
    },
    "battle_as_religion": {
        "title": "Battle as Religious Observance",
        "description": "A battle is fought as a sacred or ceremonial act."
    },
    "magical_object_is_junk": {
        "title": "Magical Object Is Junk",
        "description": "An item thought to be magical turns out to be useless or broken."
    },
    "unmanned_ship_arrives": {
        "title": "Unmanned Ship Arrives",
        "description": "A ship with no crew sails itself into the harbor, raising questions and fears."
    },
    "migration_darkens_skies": {
        "title": "Migration Darkens Skies",
        "description": "Mass migration of birds or butterflies is so vast it blocks the sun for days."
    },
    "permanent_weather_curse": {
        "title": "Permanent Weather Curse",
        "description": "A curse traps a place or person in unending darkness, daylight, fog, wind, or lightning."
    },
    "twin_demigod_rivalry": {
        "title": "Twin Demigod Rivalry",
        "description": "Intense competition or conflict erupts between sibling demigods."
    },
    "bidding_more_than_money": {
        "title": "Bidding More Than Money",
        "description": "People are willing to offer more than money—perhaps memories, years, or secrets—for something valuable."
    },
    "unexpected_purpose": {
        "title": "Unexpected Purpose",
        "description": "The real purpose of a place, event, or object is completely different from what everyone was told."
    },
    "spirit_connected_to_object": {
        "title": "Spirit Connected to Object",
        "description": "A person's spirit or life force is mysteriously tied to a particular object, place, or animal."
    },
    "catacombs_hiding": {
        "title": "Hiding in Catacombs",
        "description": "A character has been concealed in underground catacombs for years, evading detection."
    },
    "mythical_creature_fossil": {
        "title": "Mythical Creature Fossil",
        "description": "Discovery of a fossil or skeleton proves the existence of a legendary creature."
    },
    "returned_to_own_kind": {
        "title": "Returned to Own Kind",
        "description": "A character or creature finally reunites with others of their own kind."
    },
    "body_possession_trap": {
        "title": "Body Possession Trap",
        "description": "A character possesses another's body but becomes unable to leave it, causing distress."
    },
    "river_has_soul": {
        "title": "River Has a Soul",
        "description": "A river is revealed to have its own sentience or spirit."
    },
    "living_under_assumed_name": {
        "title": "Living Under Assumed Name",
        "description": "A character has run away and started a new life under a false identity."
    },
    "bring_new_king_to_throne": {
        "title": "Bring New King to Throne",
        "description": "A movement or plot is underway to place a new ruler on the throne."
    },
    "totally_incompetent": {
        "title": "Totally Incompetent",
        "description": "A key character is completely unqualified or inept at their role, with unexpected consequences."
    },
    "inspires_great_work": {
        "title": "Inspires Great Work",
        "description": "Someone or something motivates others to achieve greatness or create masterpieces."
    },
    "transforms_when_left": {
        "title": "Transforms When Left",
        "description": "When a character leaves, those they leave behind undergo a transformation, either emotional or physical."
    },
    "bodyguard_fate_of_world": {
        "title": "Bodyguard to the Chosen",
        "description": "A character is assigned to protect someone whose fate will determine the world's destiny."
    },
    "secret_purpose_unknown": {
        "title": "Secret Purpose Unknown",
        "description": "A character is doing something critical but can never learn the true reason behind it."
    },
    "unknown_creator": {
        "title": "Unknown Creator",
        "description": "No one knows who created a particular object, place, or phenomenon."
    },
    "stone_pillars_significance": {
        "title": "Stone Pillars' Significance",
        "description": "The meaning or purpose of mysterious stone pillars is a central question."
    },
    "invisible_pet_pros_cons": {
        "title": "Invisible Pet Pros and Cons",
        "description": "Having an invisible pet brings both helpful and troublesome consequences."
    },
    "parachute_tree_leaves": {
        "title": "Parachute Tree Leaves",
        "description": "The leaves of a special tree are used as effective parachutes."
    },
    "evil_ruler_forges_prophecy": {
        "title": "Evil Ruler Forges Prophecy",
        "description": "A tyrant forces others to create a false prophecy about his destined reign."
    },
    "century_old_catalog_order": {
        "title": "Century-Old Catalog Order",
        "description": "A character finds an ancient catalog, places an order, and astonishingly receives a reply."
    },
    "sidekick_takes_over": {
        "title": "Sidekick Takes Over",
        "description": "The hero is killed halfway through, forcing the sidekick to become the new protagonist."
    },
    "caretaker_requirement_for_procreation": {
        "title": "Caretaker Requirement for Procreation",
        "description": "Characters must prove they are suitable caregivers before being allowed to have children."
    },
    "must_prove_to_government": {
        "title": "Must Prove to Government",
        "description": "A character or group must demonstrate something to the government to gain approval or rights."
    },
    "government_arranged_marriages": {
        "title": "Government-Arranged Marriages",
        "description": "Due to excessive bureaucracy, many people opt for marriages arranged by the state."
    },
    "rapid_human_mutations": {
        "title": "Rapid Human Mutations",
        "description": "A mysterious phenomenon or event causes quick and unpredictable mutations in humans."
    },
    "department_approval_required": {
        "title": "Department Approval Required",
        "description": "A government department must approve an action, relationship, or possession."
    },
    "unfair_deal_brokered": {
        "title": "Unfair Deal Brokered",
        "description": "A character brokers a deal widely seen as unjust or exploitative."
    },
    "public_water_supply_additive": {
        "title": "Additive in Public Water Supply",
        "description": "Something is deliberately added to the public water supply, causing widespread effects."
    },
    "direct_communication_discovered": {
        "title": "Direct Communication Discovered",
        "description": "Someone discovers a way to communicate directly with a species, entity, or technology previously unreachable."
    },
    "lab_created_entity": {
        "title": "Lab-Created Entity",
        "description": "A person, creature, or phenomenon now exists only because it was engineered in a laboratory."
    },
    "history_is_changing": {
        "title": "History Is Changing",
        "description": "Historical events are shifting—major wars or milestones from the past now never happened."
    },
    "modifications_extra_limbs": {
        "title": "Modifications & Extra Limbs",
        "description": "Characters undergo physical modifications such as extra limbs or cartoon-like features."
    },
    "believes_they_fit_in": {
        "title": "Believes They'll Fit In",
        "description": "A character is convinced they will belong in a new place, group, or society—possibly mistakenly."
    },
    "interplanetary_crisis": {
        "title": "Interplanetary Crisis",
        "description": "A situation or action triggers a crisis that affects multiple planets or worlds."
    },
    "reluctant_to_reveal_truth": {
        "title": "Reluctant to Reveal Truth",
        "description": "A character hesitates to share important information, even though the truth will emerge soon."
    },
    "high_speed_robotic_horses_trendy": {
        "title": "High-Speed Robotic Horses Trendy",
        "description": "Robotic horses have become a trendy alternative to cars, reshaping transportation and leisure."
    },
    "track_down_fugitives_vaccination_resistance": {
        "title": "Track Down Fugitives - Vaccination Resistance",
        "description": "Authorities are actively seeking individuals who resisted mandatory vaccinations or implants, raising ethical and societal questions."
    },
    "personal_information_easy_to_obtain": {
        "title": "Personal Information Easy to Obtain",
        "description": "Access to personal information, including behavioral patterns and psychological triggers, has become remarkably easy, impacting privacy and security."
    },
    "corporations_sell_algorithms_consumers": {
        "title": "Corporations Sell Algorithms - Consumers",
        "description": "Corporations synthesize and sell algorithms about consumers to tailor goods and services, raising concerns about manipulation and data exploitation."
    },
    "mars_terraformed": {
        "title": "Mars Has Been Terraformed",
        "description": "Mars has been successfully terraformed, allowing for human colonization and a new chapter in space exploration."
    },
    "colonists_assured_radiation_gone": {
        "title": "Colonists Assured Radiation Gone",
        "description": "Colonists on Mars have been assured that most of the radiation has been eliminated, but lingering doubts and hidden dangers remain."
    },
    "attempt_save_honeybees_consequences": {
        "title": "Attempt to Save Honeybees - Surprising Consequences",
        "description": "An attempt to save the honeybees has unforeseen and surprising consequences, altering ecosystems and raising ethical dilemmas."
    }
}
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
    plot_key = random.choice(list(PLOT_POINTS.keys()))
    plot_point = PLOT_POINTS[plot_key]
    return {
        "folktale_function": random.choice(FOLKTALE_FUNCTIONS),
        "location": random.choice(LOCATIONS),
        "character": random.choice(CHARACTERS),
        "plot_point_title": plot_point["title"],
        "plot_point_description": plot_point["description"],
        "plot_point_key": plot_key,
        "complex_characteristic": random.choice(COMPLEX_CHAS)
    }

def generate_story_elements():
    """Generate formatted story elements."""
    elements = select_random_elements()
    return f"""
    Location: {elements['location']}
    Character: {elements['character']}
    Plot Point: {elements['plot_point_title']} - {elements['plot_point_description']}
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
    """Generate a story using Propp's 31/32 total functions."""
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

    long_prompt = "Provide detailed assistance based on the query and code buffer."
    query = input("Your Question: ").strip()
    if query:
        print("Sending code buffer and query to the AI...")
        try:
            response = CHAIN.invoke({"context": code_buffer, "extra_context": f"Question: {query}", "question": {long_prompt}})
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
            print("\nEnJN Design StoryTeller:\n", response)
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