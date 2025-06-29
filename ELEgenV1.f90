program story_element_generator_EnJnDeSIgn2024
	! Hey Copilot, This is just some simple randomness for story elements... Ian had to start somewhere and this is useful!
    implicit none
    ! Declare user_input as a character of length 1
    !character(len=1) :: user_input
    integer :: selected_group, selected_element, i, roll_count
    character(len=180), dimension(0:572, 0:5) :: groups
    character(len=180), dimension(6) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, &
										group9, group10, group11, group12, group13, group14, group15, group16, group17, &
										group18, group19, group20, group21, group22, group23, group24, group25, group26, &
										group27, group28, group29, group30, group31, group32, group33, group34, group35, &
										group36, group37, group38, group39, group40, group41, group42, group43, group44, &
										group45, group46, group47, group48, group49, group50, group51, group52, group53, &
										group54, group55, group56, group57, group58, group59, group60, group61, group62, &
										group63, group64, group65, group66, group67, group68, group69, group70, group71, &
										group72, group73, group74, group75, group76, group77, group78, group79, group80, &
										group81, group82, group83, group84, group85, group86, group87, group88, group89, &
										group90, group91, group92, group93, group94, group95, group96, group97, group98, &
										group99, group100, group101, group102, group103, group104, group105, group106, group107, &
										group108, group109, group110, group111, group112, group113, group114, group115, group116, &
										group117, group118, group119, group120, group121, group122, group123, group124, group125, &
										group126, group127, group128, group129, group130, group131, group132, group133, group134, &
										group135, group136, group137, group138, group139, group140, group141, group142, group143, &
										group144, group145, group146, group147, group148, group149, group150, group151, group152, &
										group153, group154, group155, group156, group157, group158, group159, group160, group161, &
										group162, group163, group164, group165, group166, group167, group168, group169, group170, &
										group171, group172, group173, group174, group175, group176, group177, group178, group179, &
										group180, group181, group182, group183, group184, group185, group186, group187, group188, &
										group189, group190, group191, group192, group193, group194, group195, group196, group197, &
										group198, group199, group200, group201, group202, group203, group204, group205, group206, &
										group207, group208, group209, group210, group211, group212, group213, group214, group215, &
										group216, group217, group218, group219, group220, group221, group222, group223, group224, &
										group225, group226, group227, group228, group229, group230, group231, group232, group233, &
										group234, group235, group236, group237, group238, group239, group240, group241, group242, &
										group243, group244, group245, group246, group247, group248, group249, group250, group251, &
										group252, group253, group254, group255, group256, group257, group258, group259, group260, &
										group261, group262, group263, group264, group265, group266, group267, group268, group269, &
										group270, group271, group272, group273, group274, group275, group276, group277, group278, &
										group279, group280, group281, group282, group283, group284, group285, group286, group287, &
										group288, group289, group290, group291, group292, group293, group294, group295, group296, &
										group297, group298, group299, group300, group301, group302, group303, group304, group305, &
										group306, group307, group308, group309, group310, group311, group312, group313, group314, &
										group315, group316, group317, group318, group319, group320, group321, group322, group323, &
										group324, group325, group326, group327, group328, group329, group330, group331, group332, &
										group333, group334, group335, group336, group337, group338, group339, group340, group341, &
										group342, group343, group344, group345, group346, group347, group348, group349, group350, &
										group351, group352, group353, group354, group355, group356, group357, group358, group359, &
										group360, group361, group362, group363, group364, group365, group366, group367, group368, &
										group369, group370, group371, group372, group373, group374, group375, group376, group377, &
										group378, group379, group380, group381, group382, group383, group384, group385, group386, &
										group387, group388, group389, group390, group391, group392, group393, group394, group395, &
										group396, group397, group398, group399, group400, group401, group402, group403, group404, &
										group405, group406, group407, group408, group409, group410, group411, group412, group413, &
										group414, group415, group416, group417, group418, group419, group420, group421, group422, &
										group423, group424, group425, group426, group427, group428, group429, group430, group431, &
										group432, group433, group434, group435, group436, group437, group438, group439, group440, &
										group441, group442, group443, group444, group445, group446, group447, group448, group449, &
										group450, group451, group452, group453, group454, group455, group456, group457, group458, &
										group459, group460, group461, group462, group463, group464, group465, group466, group467, &
										group468, group469, group470, group471, group472, group473, group474, group475, group476, &
										group477, group478, group479, group480, group481, group482, group483, group484, group485, &
										group486, group487, group488, group489, group490, group491, group492, group493, group494, &
										group495, group496, group497, group498, group499, group500, group501, group502, group503, &
										group504, group505, group506, group507, group508, group509, group510, group511, group512, &
										group513, group514, group515, group516, group517, group518, group519, group520, group521, &
										group522, group523, group524, group525, group526, group527, group528, group529, group530, &
										group531, group532, group533, group534, group535, group536, group537, group538, group539, &
										group540, group541, group542, group543, group544, group545, group546, group547, group548, &
										group549, group550, group551, group552, group553, group554, group555, group556, group557, &
										group558, group559, group560, group561, group562, group563, group564, group565, group566, &
										group567, group568, group569, group570, group571, group572
    ! Initialize additional groups below as needed
    real :: rand

    ! Seed the random number generator
    call random_seed()
	roll_count = 5

    ! Display the program name and introduction
    !print *, "story_element_generator_EnJnDeSIgn2024_for_A.I."
	!print *, "   An expression of the Infinty in triplets    "
	!print *, "                By Ian J Norris                "
	!print *, "              Ian.enjn@gmail.com               "

    ! Initialize group0
    group0 = (/ "howling wolf                  ", "different then she's been led ", "the TV turns itself to a      ", &
                "they discover that the earth  ", "scary forest                  ", "of the same army are tricked  " /)
    ! Initialize group1
    group1 = (/ "such as heartbeats and        ", "impact on society,            ", "the night and runs out to a   ", &
                "scary tower                   ", "though their lifespan         ", "hand mirror                   " /)
    ! Initialize group2
    group2 = (/ "the room had a door when she  ", "old traveling person          ", "running away                  ", &
                "of their own                  ", "old cat                       ", "it has advantages and not     " /)
    ! Initialize group3
    group3 = (/ "blind exploration             ", "change of directions          ", "killed in the train wreck     ", &
                "soldier,but unfortunately, his", "wondering, whats inside a gift", "nouveau sorcerer              " /)
    ! Initialize group4
    group4 = (/ "eating                        ", "average ratings have no luck  ", "u.s.s.r. joined together to   ", &
                "it's easy to look up exactly  ", "deciding what to bet          ", ",make off with all the embryos" /)
    ! Initialize group5
    group5 = (/ "cough                         ", "she resents it                ", "nurse                         ", &
                "an entertainment company      ", "who resisted vaccinations     ", "aliens explore earth, but     " /)
    ! Initialize group6
    group6 = (/ "castle tower                  ", "their diseases have been      ", "she thought she'd be in outer ", &
                "eye                           ", "suitable caretakers and       ", "the pay is very good          " /)
    ! Initialize group7
    group7 = (/ "blood drips and spatters on   ", "new bridge                    ", "adapt to another planet's     ", &
                "to permanent daytime          ", "undergo creative modifications", "magician's wand               " /)
    ! Initialize group8
    group8 = (/ "lab-created                   ", "after a massive hack, the     ", "herself on her cell phone that", &
                "hitting the unfriend button is", "none else experiences empathy ", "the letter L                  " /)
    ! Initialize group9
    group9 = (/ "never lost at waterloo        ", "alien                         ", "person finds new photos of    ", &
                "cell phone                    ", "religious observance          ", "of water-drinking it, touching" /)
    ! Initialize group10
   group10 = (/ "chest of treasure             ", "in the middle of the night,   ", "cracked egg                   ", &
                "superstition proves true      ", "expression of anger           ", "mountain road at night        " /)
    ! Initialize group11
   group11 = (/ "expulsion in all directions   ", "whip                          ", "the grandfather clock starts  ", &
                "Wild West, but the outlaw they", "are a delusion                ", "large amounts of neanderthal  " /)
    ! Initialize group12
   group12 = (/ "people with a variety of      ", "falling apart tower           ", "radiation during space travel ", &
                "quietly arguing               ", "open window                   ", "prophecy fulfilled            " /)
    ! Initialize group13
   group13 = (/ "circumstances is part of a    ", "ugly                          ", "cook                          ", &
                "and crooked shapes            ", "create a TV show that's       ", "could or may, never be removed" /)
    ! Initialize group14
   group14 = (/ "therapy to change their DNA   ", "in the sky                    ", "homeless child                ", &
                "is revealed                   ", "believe the planet is deserted", "the monster destroyed         " /)
    ! Initialize group15
   group15 = (/ "at a new underwater amusement ", "shackled prisoner             ", "shuttered the windows; it came", &
                "an attempt to                 ", "dragon                        ", "it's about to go back to      " /)
    ! Initialize group16
   group16 = (/ "+ Thats' the rest,of the story", "non-confrontational has been  ", "advocating                    ", &
                "married the next day          ", "evil-doers                    ", "down a well                   " /)
    ! Initialize group17
   group17 = (/ "everyone else in an online    ", "in a terrifying way           ", "police badge                  ", &
                "a parent is descending into   ", "submarine                     ", "earth's magnetic fields       " /)
    ! Initialize group18
   group18 = (/ "place while he's in custody   ", "palace                        ", "what happened in vegas did not", &
                "rescued                       ", "make the human explorers      ", "never able to find it again   " /)
    ! Initialize group19
   group19 = (/ "they fought long and hard to  ", "insists on increasingly real  ", "beggar                        ", &
                "lost event                    ", "decades and haul it out       ", "was broken and they were free " /)
    ! Initialize group20
   group20 = (/ "in dating or finding work     ", "with animals, and all the meat", "old person                    ", &
                "escaping                      ", "but cheating and foul play are", "revealed true identity        " /)
    ! Initialize group21
   group21 = (/ "ameba                         ", "ever since he played the      ", "someone was watching her, then", &
                "planet's main export:         ", "scientists attempt to         ", "stairs into ground            " /)
    ! Initialize group22
   group22 = (/ "wound was healed              ", "heart remained broken         ", "photographs taken in          ", &
                "alien is taken prisoner after ", "parents                       ", "he knows he's a soldier, but  " /)
    ! Initialize group23
   group23 = (/ "japanese shrine gate          ", "it, or even being near it     ", "anamal bones                  ", &
                "cave down                     ", "commanders in another country ", "france took control of most of" /)
    ! Initialize group24
   group24 = (/ "people opt for gov-arranged   ", "home                          ", "friend being at the party     ", &
                "chasing                       ", "a water well                  ", "blind for their falsehood     " /)
    ! Initialize group25
   group25 = (/ "wicked                        ", "technology existed to record  ", "parent                        ", &
                "falling in love               ", "they find the fossil of a     ", "promised never to fight       " /)
    ! Initialize group26
   group26 = (/ "by                            ", "on ceres, a large asteroid,   ", "princess                      ", &
                "making mischief               ", "stairs up                     ", "returned stolen to owner      " /)
    ! Initialize group27
   group27 = (/ "bow and arrows                ", "a spirit possesses a          ", "at nursing homes for the      ", &
                "house                         ", "glass of beer                 ", "wheelbarrow                   " /)
    ! Initialize group28
   group28 = (/ "and for all I know            ", "dancing in the                ", "so it was                     ", &
                "transformed back into         ", "saw error of there ways       ", "lived a good life             " /)
    ! Initialize group29
   group29 = (/ "priest                        ", "countries with elephants won  ", "pig roast                     ", &
                "merchant stall                ", "warring royalty               ", "ink well and fountain pen     " /)
    ! Initialize group30
   group30 = (/ "remote area begins having the ", "kitchen                       ", "something he wanted?          ", &
                "they are drunk                ", "arrival of a hypnotist in     ", "restored to prosperity        " /)
    ! Initialize group31
   group31 = (/ "a glacier melts and the       ", "this person seems like his    ", "queen                         ", &
                "returned event                ", "dialogue from his nightmares  ", "knew monster all along        " /)
    ! Initialize group32
   group32 = (/ "wise                          ", "alien invasion and for a      ", "felony, which leads to        ", &
                "her husband secretly sold the ", "their fallen enemies, which   ", "passed it on                  " /)
    ! Initialize group33
   group33 = (/ "king of the hill              ", "minotaur                      ", "elevated temple               ", &
                "of intersex babies has led to ", "long ship                     ", "that mysteriously disappeared " /)
    ! Initialize group34
   group34 = (/ "realized there loyalty        ", "sister had been               ", "proves you should always      ", &
                "choosing your companions      ", "become king or queen in time  ", "which meant                   " /)
    ! Initialize group35
   group35 = (/ "stop                          ", "turtle                        ", "magnifying glass              ", &
                "scary shadow                  ", "dice                          ", "people can loan out their     " /)
    ! Initialize group36
   group36 = (/ "their past lives              ", "magic forest                  ", "horse                         ", &
                "contest                       ", "book                          ", "escaped awful place           " /)
    ! Initialize group37
   group37 = (/ "process of 3D printing human  ", "city                          ", "stepmother                    ", &
                "it comes alive                ", "foolosh                       ", "king relented and the two were" /)
    ! Initialize group38
   group38 = (/ "the body                      ", "village                       ", "guard                         ", &
                "parting ways                  ", "ring                          ", "how the kingdom got           " /)
    ! Initialize group39
   group39 = (/ "an unusual name               ", "clock                         ", "light bulb                    ", &
                "an arrow                      ", "a building                    ", "makes them feel good          " /)
    ! Initialize group40
   group40 = (/ "lived rest of life as beggar  ", "was perfectly just            ", "there madness                 ", &
                "was cured                     ", "with the enemy dead           ", "they could get                " /)
    ! Initialize group41
   group41 = (/ "big and or small              ", "crab                          ", "they enlist someone's help to ", &
                "shield                        ", "place of worship              ", "locket                        " /)
    ! Initialize group42
   group42 = (/ "necklace                      ", "organs from living donors     ", "compassionate                 ", &
                "soup                          ", "coral reef                    ", "scientist                     " /)
    ! Initialize group43
   group43 = (/ "to permanent darkness         ", "cave                          ", "orphan                        ", &
                "time passes                   ", "happy                         ", "cook prepared feast           " /)
    ! Initialize group44
   group44 = (/ "lion                          ", "plot an escape or revolt      ", "good in-things, hard to find  ", &
                "earrings                      ", "man from the house of life    ", "it appears as though many     " /)
    ! Initialize group45
   group45 = (/ "mouse rodent                  ", "littal did she know           ", "coins                         ", &
                "customer                      ", "been dead for thirty minutes  ", "clear light                   " /)
    ! Initialize group46
   group46 = (/ "disguised                     ", "mountain                      ", "dragon scale                  ", &
                "hurting someone               ", "clothes                       ", "as had been fortold           " /)
    ! Initialize group47
   group47 = (/ "dory boat                     ", "mermaid                       ", "cartoon-like features,        ", &
                "trunk                         ", "throne                        ", "winged shoes                  " /)
    ! Initialize group48
   group48 = (/ "tyrant                        ", "and so the                    ", "perished                      ", &
                "giving                        ", "sell algorithms about consumer", "table                         " /)
    ! Initialize group49
   group49 = (/ "accidentally damaging         ", "cut                           ", "crying                        ", &
                "person gets sucked into a     ", "down the stairs               ", "drawing                       " /)
    ! Initialize group50
   group50 = (/ "old wise man                  ", "where are they going          ", "fighting                      ", &
                "village-it's a settlement on  ", "sculpture                     ", "fish                          " /)
    ! Initialize group51
   group51 = (/ "painting                      ", "so the government has no      ", "math                          ", &
                "to give before you get        ", "opposite and connection       ", "greed                         " /)
    ! Initialize group52
   group52 = (/ "wood axe                      ", "shredded into little pieces,  ", "sick                          ", &
                "bat or club                   ", "ladder                        ", "raven or crow                 " /)
    ! Initialize group53
   group53 = (/ "the entire planet, but nobody ", "church                        ", "king                          ", &
                "hurricane or tornado          ", "hidden                        ", "there treasure                " /)
    ! Initialize group54
   group54 = (/ "out of there sight            ", "dungeon                       ", "fairy                         ", &
                "found                         ", "noodles                       ", "for slaying the dragon        " /)
    ! Initialize group55
   group55 = (/ "of his own design             ", "night                         ", "hydra monster                 ", &
                "dying                         ", "treasure                      ", "flames rose higher            " /)
    ! Initialize group56
   group56 = (/ "parachute                     ", "shark                         ", "key hole                      ", &
                "drama games                   ", "flower                        ", "all directional               " /)
    ! Initialize group57
   group57 = (/ "so they told them             ", "wicked place was destroyed    ", "despite the                   ", &
                "agreed to                     ", "so they changed               ", "was back to                   " /)
    ! Initialize group58
   group58 = (/ "yelling                       ", "drilling                      ", "dancing on the                ", &
                "planting                      ", "snap in two                   ", "fist fight                    " /)
    ! Initialize group59
   group59 = (/ "this can talk                 ", "outer space                   ", "thief                         ", &
                "imprisoned                    ", "driven out of the             ", "they forgave                  " /)
    ! Initialize group60
   group60 = (/ "healed                        ", "ocean                         ", "frog                          ", &
                "an altar                      ", "something breaks              ", "buried                        " /)
    ! Initialize group61
   group61 = (/ "this can fly                  ", "desert                        ", "ogre monster                  ", &
                "journey                       ", "gem stone                     ", "and they mourned them         " /)
    ! Initialize group62
   group62 = (/ "sad                           ", "moors                         ", "villain henchman              ", &
                "transforming                  ", "aeroplane                     ", "they kept advice              " /)
    ! Initialize group63
   group63 = (/ "asking for                    ", "fun                           ", "deciding direction            ", &
                "working out                   ", "crash                         ", "catch                         " /)
    ! Initialize group64
   group64 = (/ "stolen                        ", "grasslands                    ", "hunter                        ", &
                "party                         ", "sail boat                     ", "they gave them the prize      " /)
    ! Initialize group65
   group65 = (/ "trojan horse                  ", "musical harp                  ", "maze                          ", &
                "tired                         ", "flying too close to the sun   ", "friendly                      " /)
    ! Initialize group66
   group66 = (/ "gauge                         ", "chalice                       ", "monkey                        ", &
                "twilight, morning or evening  ", "backpack                      ", "cactus                        " /)
    ! Initialize group67
   group67 = (/ "it just shows that            ", "aren't always what they seem  ", "farmer                        ", &
                "true love                     ", "broken the enchantment        ", "yacht                         " /)
    ! Initialize group68
   group68 = (/ "rejoiced at                   ", "end of the tyrant's           ", "knight                        ", &
                "proves of the heart           ", "brave and true                ", "Charrette                     " /)
    ! Initialize group69
   group69 = (/ "a planet                      ", "flashlight                    ", "apple                         ", &
                "smile                         ", "spaceship                     ", "office                        " /)
    ! Initialize group70
   group70 = (/ "knock                         ", "awaken                        ", "lookout                       ", &
                "reach                         ", "air dry                       ", "construct                     " /)
    ! Initialize group71
   group71 = (/ "fulfiled bargain              ", "everyone was                  ", "astronaut                     ", &
                "was delighted                 ", "unusual gift                  ", "whale                         " /)
    ! Initialize group72
   group72 = (/ "question                      ", "fountain                      ", "lost key                      ", &
                "wonder                        ", "tent                          ", "star                          " /)
    ! Initialize group73
   group73 = (/ "go through                    ", "game                          ", "listening                     ", &
                "kid playing                   ", "peaking                       ", "falling                       " /)
    ! Initialize group74
   group74 = (/ "they escaped                  ", "captors fled                  ", "liaison                       ", &
                "every day they saw results    ", "there disobedience            ", "bard                          " /)
    ! Initialize group75
   group75 = (/ "pointing at                   ", "elephant                      ", "camara                        ", &
                "eye-glasses                   ", "cooking pot                   ", "medication                    " /)
    ! Initialize group76
   group76 = (/ "robbery                       ", "brainstorming                 ", "light fire                    ", &
                "push                          ", "push button                   ", "drop                          " /)
    ! Initialize group77
   group77 = (/ "fear                          ", "driver                        ", "foreign land                  ", &
                "owl                           ", "sketchbook                    ", "goblin                        " /)
    ! Initialize group78
   group78 = (/ "equilibrium                   ", "referee                       ", "graveyard                     ", &
                "magic ring                    ", "doctor                        ", "this journey of existence     " /)
    ! Initialize group79
   group79 = (/ "personal challenge            ", "judge                         ", "theater                       ", &
                "magic pen                     ", "camel                         ", "poem                          " /)
    ! Initialize group80
   group80 = (/ "revange                       ", "lawyer                        ", "restaurant                    ", &
                "athame                        ", "chameleon                     ", "in defence they               " /)
    ! Initialize group81
   group81 = (/ "generous                      ", "servient                      ", "courthouse                    ", &
                "pipe                          ", "dear                          ", "and they stirred in a pinch   " /)
    ! Initialize group82
   group82 = (/ "wisdom                        ", "old wise woman                ", "alleyway                      ", &
                "tool                          ", "machine                       ", "ticked away like clockwork    " /)
    ! Initialize group83
   group83 = (/ "mystery                       ", "butcher                       ", "post office                   ", &
                "a safe                        ", "rabbit                        ", "went down the hole            " /)
    ! Initialize group84
   group84 = (/ "restore                       ", "maintain                      ", "proves of the mind            ", &
                "dress                         ", "shirt                         ", "arrival of                    " /)
    ! Initialize group85
   group85 = (/ "West Coast Tall Coconut       ", "this can heal                 ", "butterfly                     ", &
                "sailor                        ", "paint brush                   ", "The text of a letter or diary " /)
    ! Initialize group86
   group86 = (/ "caterpillar                   ", "navigation tools              ", "navigating                    ", &
                "solve                         ", "equation                      ", "an invitation                 " /)
    ! Initialize group87
   group87 = (/ "delicate balance of order     ", "teleport                      ", "proves of the soul            ", &
                "captain and crew              ", "a hawk or eagle               ", "a club or dinner party        " /)
    ! Initialize group88
   group88 = (/ "Japanese maples or Red maples ", "demon or devil                ", "bread baker                   ", &
                "labyrinth                     ", "a hat                         ", "a frustrating situation       " /)
    ! Initialize group89
   group89 = (/ "mountain pine                 ", "unicorn                       ", "boatswain                     ", &
                "chair                         ", "clipper ship                  ", "awkward or embarrassing       " /)
    ! Initialize group90
   group90 = (/ "a grafton monster             ", "adviser to                    ", "helpful                       ", &
                "dessert                       ", "playing cards                 ", "an escape                     " /)
    ! Initialize group91
   group91 = (/ "a magician                    ", "lighting a                    ", "meadow or grassland           ", &
                "symbiotic                     ", "calendar                      ", "discovers a dead body         " /)
    ! Initialize group92
   group92 = (/ "sleight of hand               ", "lightning storm               ", "plug or socket                ", &
                "writer                        ", "arctic region                 ", "a funeral is held for someone " /)
    ! Initialize group93
   group93 = (/ "a birth                       ", "beginning, middle of disaster ", "aftermath of a disaster       ", &
                "will be discovered later      ", "how to do a good deed         ", "mechanic                      " /)
    ! Initialize group94
   group94 = (/ "programmer                    ", "shopping centre               ", "authoritarian autocratic      ", &
                "ruthless totalitarian         ", "repressive                    ", "a kiss                        " /)
    ! Initialize group95
   group95 = (/ "overbearing                   ", "sand storm                    ", "alchemist                     ", &
                "performance or conclusion of  ", "character rescues another     ", "laboratory                    " /)
    ! Initialize group96
   group96 = (/ "sis pur ankh, man house life  ", "the world                     ", "astral plane                  ", &
                "air elemental monster         ", "water elemental monster       ", "clearly is in big trouble     " /)
    ! Initialize group97
   group97 = (/ "earth elemental monster       ", "sky elemental monster         ", "the holy mound                ", &
                "scarab                        ", "soldier                       ", "character is in the hospital  " /)
    ! Initialize group98
   group98 = (/ "microscopic                   ", "philosopher                   ", "elixir                        ", &
                "trickster                     ", "sees house or city, first time", "a plane, ship or train arrives" /)
    ! Initialize group99
   group99 = (/ "a plane, ship or train departs", "gets amazing news             ", "gets devastating news         ", &
                "someone goes on a date        ", "breaks up with or is dumped   ", "scene at a party or nightclub " /)
    ! Initialize group100
  group100 = (/ "music                         ", "musician                      ", "percussionist                 ", &
                "studio                        ", "watching a fight              ", "an all-out battle scene       " /)
    ! Initialize group101
  group101 = (/ "chemistry                     ", "a fascinator                  ", "parliament                    ", &
                "tiger                         ", "bureaucratic                  ", "moves in to a new place       " /)
    ! Initialize group102
  group102 = (/ "proficiency                   ", "fruit or vegetable            ", "teacher                       ", &
                "student                       ", "someone is arrested           ", "a courtroom trial             " /)
    ! Initialize group103
  group103 = (/ "eclipse                       ", "astronomer                    ", "foreign plaint in space       ", &
                "true, not and all in-between  ", "my sweetie                    ", "a job interview               " /)
    ! Initialize group104
  group104 = (/ "creative                      ", "a friendship                  ", "support                       ", &
                "sea voyage                    ", "fired from a job              ", "a chase scene                 " /)
    ! Initialize group105
  group105 = (/ "extortionist                  ", "stirred                       ", "the agenda of a meeting       ", &
                "waiting for                   ", "ambush                        ", "a visitor shows up            " /)
    ! Initialize group106
  group106 = (/ "pyromaniac                    ", "a nice jester                 ", "a stray cat                   ", &
                "a busy street scene           ", "gets dressed, shave or do hair", "character commits a crime     " /)
    ! Initialize group107
  group107 = (/ "lucky number 7                ", "comedian                      ", "a joke                        ", &
                "market                        ", "it's happening right now!     ", "they do a job or task         " /)
    ! Initialize group108
  group108 = (/ "mutual                        ", "teaches how to do something   ", "prepare or sit down to eat    ", &
                "finds a significant object    ", "comes across                  ", "teaches or attends a class    " /)
    ! Initialize group109
  group109 = (/ "Spiritual Hypnotic Engineering", "hypnotic                      ", "mathematically                ", &
                "ten nine eight seven five four", "three two one. and deeper next", "Next time, and more relaxed   " /)
    ! Initialize group110
  group110 = (/ "hypnotist                     ", "barber                        ", "royal bastard                 ", &
                "herald                        ", "their job is to gather up     ", "royal scribe                  " /)
    ! Initialize group111
  group111 = (/ "who's word is true            ", "put into                      ", "personal guard                ", &
                "negotiation                   ", "festival                      ", "attends a church service      " /)
    ! Initialize group112
  group112 = (/ "baron                         ", "paladin                       ", "captain of the guard          ", &
                "blacksmith                    ", "assassin                      ", "abbot                         " /)
    ! Initialize group113
  group113 = (/ "is in a triumphant situation  ", "unwraps a gift                ", "a birthday party              ", &
                "isn't happy about being left  ", "when they go off to war       ", "informant                     " /)
    ! Initialize group114
  group114 = (/ "winds up leading the biggest  ", "phoenixes or similar humanoids", "a fae, giant and a gnome walk ", &
                "survives, struck by lightning ", "urge to sing about the desires", "mermaids                      " /)
    ! Initialize group115
  group115 = (/ "this hideous monster is nice  ", "was considered bad luck       ", "ordered twin to be killed     ", &
                "the magical spell turned the  ", "hoard of gold and jewels into ", "sparkling                     " /)
    ! Initialize group116
  group116 = (/ "ambassador                    ", "founding father               ", "gambler                       ", &
                "sent to kidnap the            ", "daughter or son               ", "don't go according to plan    " /)
    ! Initialize group117
  group117 = (/ "constable                     ", "courtesan                     ", "executioner                   ", &
                "barbarian arrives at seminary ", "this time leads to disaster   ", "zookeeper, mythological beasts" /)
    ! Initialize group118
  group118 = (/ "archbishop                    ", "that his plays predicted the  ", "future, and possability's     ", &
                "mathematician                 ", "the calculus at the very core ", "sent son on the quest fully   " /)
    ! Initialize group119
  group119 = (/ "and the ring knew how to use  ", "it's own many, and growing    ", "function's                    ", &
                "growing                       ", "steward                       ", "treasurer                     " /)
    ! Initialize group120
  group120 = (/ "artifact                      ", "beautiful and meaningful      ", "underwater                    ", &
                "find the problems for creative", "in book of the dun cow MmMmM  ", "stay playful, see you later DB" /)
    ! Initialize group121
  group121 = (/ "cellarer                      ", "chamberlain                   ", "jailkeeper                    ", &
                "salt in your wound            ", "expecting that they would get ", "she commands the fireflies    " /)
    ! Initialize group122
  group122 = (/ "maintain delicate balance     ", "delicate                      ", "Oneironautics                 ", &
                "dreamworld                    ", "meaningful                    ", "a jester                      " /)
    ! Initialize group123
  group123 = (/ "uncle                         ", "oneironaut                    ", "the dreamtime                 ", &
                "muskrat                       ", "turtle island                 ", "so-called school for wizards  " /)
    ! Initialize group124
  group124 = (/ "king's valet                  ", "aunt                          ", "a conjuring                   ", &
                "no one can do magic until now ", "prevent war, betraying friend ", "looking for                   " /)
    ! Initialize group125
  group125 = (/ "lace                          ", "a society in which the binary ", "Sesh: hiss of a snake         ", &
                "nay sayer                     ", "serve                         ", "vintner                       " /)
	! Initialize group126
  group126 = (/ "most intelligent species in   ", "aliens raid a fertility clinic", "Khep: rustle of papyrus leaves", &
				"royal accountant              ", "royal chef                    ", "buckle                        " /)
	! Initialize group127
  group127 = (/ "Shup: wave hitting the shore  ", "royal barrister               ", "enough of this!               ", &
				"looking for her brothers who  ", "were turned into wolves       ", "takes out the jewel, absorbs  " /)
	! Initialize group128 ! Ian note sergery
  group128 = (/ "arouse                        ", "Hapi: gurgle, water from Nile ", "volume                        ", &
				"about a mile radius           ", "fallen angel, secound chance  ", "two souls within the same body" /)
	! Initialize group129
  group129 = (/ "formations in the rocky cliffs", "asymptote                     ", "Tut: tap of a foot to music   ", &
				"rake                          ", "seer                          ", "nobody wants to be the one    " /)
	! Initialize group130
  group130 = (/ "Rahp: sound of a hearty laugh ", "whose foot fits into that     ", "they call him the king of keys", &
				"he calls himself that, anyway ", "poisions anyone told the truth", "hellhounds locked out of hell " /)
	! Initialize group131
  group131 = (/ "you can't steal my work to    ", "keep me safe                  ", "magic to weaken other's spells", &
				"his only magic, a talant for  ", "library, is a kind of arsenal ", "banshee who, rendered mute?   " /)
	! Initialize group132
  group132 = (/ "space where, apparently,      ", "accountant                    ", "restocking the larder         ", &
				"rumors                        ", "misconduct                    ", "Chuff: puff of a baker's oven " /)
	! Initialize group133
  group133 = (/ "servant                       ", "previously considered useless ", "sympathizer, rioting          ", &
				"right in the street           ", "Whesh: swish of linen garments", "spy                           " /)
	! Initialize group134
  group134 = (/ "brilliant                     ", "troubadour                    ", "Cronk: croak frog, Nile's edge", &
				"slave or prisoner of war wants", "rebel                         ", "new virus, strange symptoms   " /)
	! Initialize group135
  group135 = (/ "Zenn: breeze through reeds    ", "symptoms affects only one     ", "magical species               ", &
				"fly                           ", "this is intelligant           ", "voice magically compels, obey " /)
	! Initialize group136
  group136 = (/ "junk food                     ", "poor life choices             ", "only she is unaffected        ", &
				"because, his unique parentage ", "construction worker           ", "wolverine                     " /)
	! Initialize group137
  group137 = (/ "set of all subsets of a set   ", "plumber                       ", "construction site             ", &
				"squirrel                      ", "travels easily between, Lannds", "other people very ill         " /)
	! Initialize group138
  group138 = (/ "umbrella                      ", "rooster and or hens           ", "chemist                       ", &
				"fishing                       ", "entrusting the quest to a     ", "non-warriors turned out to be " /)
	! Initialize group139
  group139 = (/ "clerk                         ", "inn                           ", "terrible idea                 ", &
				"touches the cursed river will ", "photograph                    ", "Rrj: the sound, donkey braying" /)
	! Initialize group140
  group140 = (/ "tavern                        ", "Mjw: sound of a cat's meow    ", "intellectual                  ", &
				"grandparent                   ", "measures are to be taken      ", "no matter how much they drink " /)
	! Initialize group141
  group141 = (/ "although humans don't know it,", "save                          ", "the sea                       ", &
				"Thrum: continuous sound; harp ", "toaster                       ", "secretary                     " /)
	! Initialize group142
  group142 = (/ "Clang: resonant sound, metal  ", "institution run, supernatural ", "chauffeur                     ", &
				"in the air                    ", "rat                           ", "oven                          " /)
	! Initialize group143
  group143 = (/ "initialize                    ", "shuffle                       ", "minor goddess once, only left ", &
				"museum                        ", "Skirl: wailing sound, bagpipes", "lifeguard                     " /)
	! Initialize group144
  group144 = (/ "can smell fear, also jealousy ", "embarrassment                 ", "Thrash: heavy objects striking", &
				"hamster                       ", "controlling them or it by     ", "army general                  " /)
	! Initialize group145
  group145 = (/ "martial artist                ", "neutral                       ", "bathroom                      ", &
				"Scree: high-pitched, scraping ", "boardgames                    ", "emotions have specific scents " /)
	! Initialize group146
  group146 = (/ "lawful                        ", "cyber agent                   ", "barracks                      ", &
				"dragonfly                     ", "2 fight, one wishes avoid hurt", "Blat: short, sharp sound, horn" /)
	! Initialize group147
  group147 = (/ "Chirr: trilling sound crickets", "evil                          ", "gadgeteer                     ", &
				"no one remembers it now, but  ", "four suits, four lost kingdoms", "military bunker               " /)
	! Initialize group148
  group148 = (/ "every subroutine was sacred   ", "Groan: mournful wood creaking ", "good                          ", &
				"well-wisher                   ", "living room                   ", "racoon                        " /)
	! Initialize group149
  group149 = (/ "controlling                   ", "operator agent                ", "spy agency                    ", &
				"based on four long-lost       ", "making a purchase             ", "paulo coelho, the karma bank  " /)
	! Initialize group150
  group150 = (/ "sorceress                     ", "ambigous                      ", "demon trouble, being disloyal ", &
				"smoke                         ", "Whir: rapid wings in flight   ", "thinking                      " /)
	! Initialize group151
  group151 = (/ "perseverance                  ", "ghost                         ", "Clatter: rattling objects     ", &
				"horses burst into flames      ", "butler                        ", "university                    " /)
	! Initialize group152
  group152 = (/ "cafeteria                     ", "scrying                       ", "professional free agent       ", &
				"Twang:vibrating plucked string", "crocodile                     ", "sphere                        " /)
	! Initialize group153
  group153 = (/ "Rumble: distant sound thunder ", "dolphin                       ", "bedroom                       ", &
				"blackjack                     ", "magical item erases memories  ", "helper                        " /)
	! Initialize group154
  group154 = (/ "bring evil guy back to life   ", "pirate                        ", "pterodactyl                   ", &
				"sweep                         ", "tundra                        ", "Sizzle: hissing water, hot oil" /)
	! Initialize group155
  group155 = (/ "speak                         ", "they've got a good reason to  ", "Thud: dull sound of impact    ", &
				"gizmoteer tinker              ", "mutant                        ", "sextant                       " /)
	! Initialize group156
  group156 = (/ "dog                           ", "computer                      ", "mercenary                     ", &
				"metamorphosis                 ", "Jangle:discordant metal object", "library                       " /)
	! Initialize group157
  group157 = (/ "cyborg                        ", "Peal: prolonged sound of bells", "shoots with arrows, in love   ", &
				"ostrich                       ", "sunny                         ", "farm                          " /)
	! Initialize group158
  group158 = (/ "thunderstorms bring him power ", "loses gradually over long     ", "clear weather                 ", &
				"commando                      ", "crickets                      ", "sonar                         " /)
	! Initialize group159
  group159 = (/ "beatboxing                    ", "stretches                     ", "she believes a shocking act of", &
				"bloodshed is needed to inspire", "academy officer               ", "buffalo                       " /)
	! Initialize group160
  group160 = (/ "Rustle: soft, leaves or paper ", "coffee                        ", "veteran                       ", &
				"falcon                        ", "uprising                      ", "appeared in the middle of town" /)
	! Initialize group161
  group161 = (/ "no one knows how it got there ", "deer                          ", "vision                        ", &
				"grunt                         ", "funnel                        ", "city hall                     " /)
	! Initialize group162
  group162 = (/ "pilgrim                       ", "statue                        ", "blue jays                     ", &
				"collage                       ", "funeral                       ", "kraken                        " /)
	! Initialize group163
  group163 = (/ "jaguar                        ", "culture bonds, steed and rider", "bag                           ", &
				"weapon makes invincible/death ", "wanderer                      ", "Snap: sharp, cracking sound   " /)
	! Initialize group164
  group164 = (/ "cigarette                     ", "below deck                    ", "professor                     ", &
				"cardinal                      ", "the spirits of the waterfalls ", "protest                       " /)
	! Initialize group165
  group165 = (/ "bone in-body belonged to, else", "candle                        ", "alligator                     ", &
				"ancient master                ", "magnetism                     ", "prepare                       " /)
	! Initialize group166
  group166 = (/ "noble                         ", "intangibility                 ", "Whistle: clear, high-pitched  ", &
				"robin                         ", "cut down tree, freed sprite   ", "circle                        " /)
	! Initialize group167
  group167 = (/ "had a twin who died at birth  ", "logo                          ", "exchanging, vows causes the   ", &
				"growth                        ", "toxic atmosphere              ", "fringer                       " /)
	! Initialize group168
  group168 = (/ "Chime: melodious sound, bells ", "scoundrel                     ", "invisibility                  ", &
				"druid                         ", "werewolf                      ", "in this land of thoughts      " /)
	! Initialize group169
  group169 = (/ "lynxes                        ", "kills to inherit there power  ", "scout                         ", &
				"Glimmer:faint shimmering light", "manipulation                  ", "a peom                        " /)
	! Initialize group170
  group170 = (/ "stick or branch               ", "electric eel                  ", "trading                       ", &
				"energy absorption             ", "giant peacocks guard the gate ", "tech specialist               " /)
	! Initialize group171
  group171 = (/ "walls talk if you touch, right", "apprentice                    ", "gravity manipulation          ", &
				"worm                          ", "hug                           ", "Tinkle: delicate, small bells " /)
	! Initialize group172
  group172 = (/ "consular                      ", "stadium                       ", "spider                        ", &
				"imp                           ", "giant spider                  ", "wants, poison the sacred well " /)
	! Initialize group173
  group173 = (/ "a wizard's severed hand wields", "Creak:groaning door floorboard", "fearsome power                ", &
				"willingly sacrificed to the   ", "chosen one, just a good liar  ", "incense that, mask any smell  " /)
	! Initialize group174
  group174 = (/ "disruptive                    ", "black market is on open ocean ", "realm                         ", &
				"guardian                      ", "pretended to be dead to escape", "appreciate                    " /)
	! Initialize group175
  group175 = (/ "the seven men in the woods    ", "darkness                      ", "must sacrifice without, why   ", &
				"chieftain                     ", "cross desert,form of sandstorm", "being able to                 " /)
	! Initialize group176
  group176 = (/ "wondering unaware, your-state ", "decides son is unworthy,reason", "control over darkness         ", &
				"no one, here without a mask   ", "Patter: rhythmic raindrops    ", "song                          " /)
	! Initialize group177
  group177 = (/ "so-called fool triumphs in a  ", "internet                      ", "not mistakes, lessons learned ", &
				"create force field            ", "battle over there enemies     ", "halfling                      " /)
	! Initialize group178
  group178 = (/ "dawn                          ", "appease a monster, rid city of", "whirlpool                     ", &
				"waters, river will make drunk ", "air bubble                    ", "police know your secret S/N/P " /)
	! Initialize group179
  group179 = (/ "recruits servants, souls yet  ", "sunset                        ", "Flutter: rapid, wings, flight ", &
				"chiroptera                    ", "remembers past lives,future to", "cleric                        " /)
	! Initialize group180
  group180 = (/ "parlor                        ", "or not use it's own functions ", "all at once                   ", &
				"reincarnation                 ", "impression it was a good spell", "jar                           " /)
	! Initialize group181
  group181 = (/ "Chatter:lively, people talking", "fighter                       ", "walk on water                 ", &
				"control elemental force       ", "breaks oath, was stupid anyway", "symbol tattooed, consequences " /)
	! Initialize group182
  group182 = (/ "monk                          ", "MaRrRoOoOoOoOoOoOOooned...    ", "dust storm                    ", &
				"quicksand                     ", "unforeseen consequences       ", "captors surprisingly polite   " /)
	! Initialize group183
  group183 = (/ "littal did they know          ", "psychopomp                    ", "how many battles make a war?  ", &
				"whirlwind                     ", "cave none, emerged alive again", "broadhead cuttlefish          " /)
	! Initialize group184
  group184 = (/ "a grudge may be strong        ", "Gurgle: bubbling,water flowing", "ranger                        ", &
				"call lightning                ", "black                         ", "stallion                      " /)
	! Initialize group185
  group185 = (/ "angel reluctant give-message  ", "praying mantis                ", "wind rush                     ", &
				"structure                     ", "rogue                         ", "hobgoblins, love playing jokes" /)
	! Initialize group186
  group186 = (/ "warlock                       ", "wordless, wordless sat beside ", "Swoosh:swift,rush air movement", &
				"redwood                       ", "alter                         ", "white                         " /)
	! Initialize group187
  group187 = (/ "red                           ", "otherworldly                  ", "the problem with              ", &
				"stranger, place-executioner's ", "country in the world to buy   ", "patron                        " /)
	! Initialize group188
  group188 = (/ "her ballad did nothing to make", "the cruel master              ", "The Ink Whisperer -En         ", &
				"Buzz:continuous,humming insect", "eldritch                      ", "mystic                        " /)
	! Initialize group189
  group189 = (/ "automobile                    ", "acolyte                       ", "party in the catacombs!       ", &
				"orange                        ", "duel, embarrassing happens    ", "in the middle of a            " /)
	! Initialize group190
  group190 = (/ "skeleton                      ", "heavenly spear of the duat    ", "witches punished, but wife one", &
				"to use                        ", "rod of Aaron,survived present ", "Crackle:popping fire or static" /)
	! Initialize group191
  group191 = (/ "how can he read the runes ?   ", "green                         ", "to make                       ", &
				"charlatan                     ", "zombie                        ", "android                       " /)
	! Initialize group192
  group192 = (/ "criminal                      ", "curse lifted,but wants it back", "robot                         ", &
				"October                       ", "iguana                        ", "television                    " /)
	! Initialize group193
  group193 = (/ "wombat                        ", "Babble: gentle, small stream  ", "entertainer                   ", &
				"from warring species, in-love ", "spring                        ", "blue                          " /)
	! Initialize group194
  group194 = (/ "shift                         ", "donkey                        ", "gladiator                     ", &
				"spear                         ", "tells identity,nobody believes", "by-fire, a shocking confession" /)
	! Initialize group195
  group195 = (/ "day                           ", "encased in                    ", "gargoyles are no longer stone ", &
				"artisan                       ", "circus                        ", "koala                         " /)
	! Initialize group196
  group196 = (/ "wraith or wraithsong          ", "purple                        ", "generate                      ", &
				"servant accidentally murders  ", "hermit                        ", "Clink: sharp,metal/glass touch" /)
	! Initialize group197
  group197 = (/ "this modern corporation has a ", "radiate                       ", "after an archaeologist digs up", &
				"aristocrat                    ", "panther                       ", "cabin                         " /)
	! Initialize group198
  group198 = (/ "yellow                        ", "necromancer on the payroll?   ", "shape change                  ", &
				"outlander                     ", "Droning:continuous,low humming", "Baku, mythical creature       " /)
	! Initialize group199
  group199 = (/ "super vision                  ", "control                       ", "librarian                     ", &
				"Oh,no! forgot to take off ring", "bull                          ", "basement                      " /)
	! Initialize group200
  group200 = (/ "time                          ", "researcher                    ", "myth easter-bunny, true story ", &
				"llama                         ", "indoctrinated-cult ,now doubts", "avocado                       " /)
	! Initialize group201
  group201 = (/ "basilisk                      ", "Fizzle: soft, sputtering sound", "scribe                        ", &
				"moose                         ", "toast                         ", "armor has one special opening " /)
	! Initialize group202
  group202 = (/ "melted down to make           ", "magenta                       ", "foundry                       ", &
				"path changes course           ", "sage                          ", "colt                          " /)
	! Initialize group203
  group203 = (/ "utensils                      ", "as you walk on it             ", "various objects now scattered ", &
				"hippopotamus                  ", "doppelganger                  ", "tabla                         " /)
	! Initialize group204
  group204 = (/ "x-ray                         ", "the magical sword was         ", "Glint: light reflecting, metal", &
				"cyan                          ", "waterbuck                     ", "astounding things for sale at " /)
	! Initialize group205
  group205 = (/ "bighorn                       ", "heightened sense              ", "trapper                       ", &
				"across the world              ", "incarnation of an ancient god ", "inferno beast                 " /)
	! Initialize group206
  group206 = (/ "penitentiary                  ", "the goblin market             ", "with song: kill,heal,resurrect", &
				"guide                         ", "gnu                           ", "ultraviolet/infrared          " /)
	! Initialize group207
  group207 = (/ "he first suspects he is the   ", "the entrance to the sewers    ", "bounty hunter                 ", &
				"to the sea                    ", "impervious                    ", "Hiss: air or steam escaping   " /)
	! Initialize group208
  group208 = (/ "nomad                         ", "to the wind                   ", "puma                          ", &
				"glide                         ", "mimic                         ", "the musician can              " /)
	! Initialize group209
  group209 = (/ "work                          ", "Margaret atwood's book signing", "repel objects                 ", &
				"fixer                         ", "impala                        ", "chupacabra                    " /)
	! Initialize group210
  group210 = (/ "mongoose                      ", "windswept                     ", "homeless,pushs time machine   ", &
				"at night, barefoot and all!   ", "navigator                     ", "open sea                      " /)
	! Initialize group211
  group211 = (/ "gray                          ", "Jingle: metal objects shaking ", "cavalry                       ", &
				"belaying pin                  ", "are committing surprising acts", "senate                        " /)
	! Initialize group212
  group212 = (/ "direction at all              ", "a band of pirates             ", "wyrm                          ", &
				"Aton,the solar disk or Ovalism", "cyberspace                    ", "this might cure the current   " /)
	! Initialize group213
  group213 = (/ "support staff                 ", "in their sleep                ", "worshiping                    ", &
				"listen to your heart,...      ", "freedom                       ", "sphinx                        " /)
	! Initialize group214
  group214 = (/ "thinking out loud             ", "vial                          ", "without thougt to their       ", &
				"quartermaster                 ", "viral                         ", "oxen                          " /)
	! Initialize group215
  group215 = (/ "plague... if it can be found  ", "nymphs                        ", "infantry                      ", &
				"halberd                       ", "starboard                     ", "emitting                      " /)
	! Initialize group216
  group216 = (/ "Knell: solemn bell rung slowly", "don't run away!               ", "eraser                        ", &
				"urchin                        ", "helps take down oppressive    ", "tell's secret                 " /)
	! Initialize group217
  group217 = (/ "typing                        ", "specialist                    ", "follow your dreams            ", &
				"attempt to rescue friend will ", "fomorians                     ", "oasis                         " /)
	! Initialize group218
  group218 = (/ "officer                       ", "a smuggler, mercenary or thief", "who may be good or evil...    ", &
				"forest spirits                ", "right beside you in the shadow", "vicuna                        " /)
	! Initialize group219
  group219 = (/ "sylph                         ", "port                          ", "regime                        ", &
				"ruler                         ", "put's mission in jeopardy     ", "flourish, Barb's typewriter   " /)
	! Initialize group220
  group220 = (/ "shade                         ", "standard bearer               ", "in a vision                   ", &
				", family member, or lover will", "orchestrating                 ", "Murmur:low,indistinct speaking" /)
	! Initialize group221
  group221 = (/ "told, lead an army to victory ", "greenhorn                     ", "ones who live, bottom of ocean", &
				"dracolich                     ", "mirror                        ", "cafe                          " /)
	! Initialize group222
  group222 = (/ "smuggler                      ", "lich                          ", "lemon                         ", &
				"skating rink                  ", "Plop: object dropping, water  ", "the magical ring was          " /)
	! Initialize group223
  group223 = (/ "tone                          ", "come to the surface           ", "Quiver:tremulous,musical sound", &
				"believes that a divine figure ", "pilot                         ", "El Mescalito                  " /)
	! Initialize group224
  group224 = (/ "microscopic art, Jeremy Ennis ", "janitor                       ", "to open the door, person must ", &
				"chimpanzee                    ", "condominium                   ", "tax                           " /)
	! Initialize group225
  group225 = (/ "bouncer                       ", "counterfeiter's coins         ", "notepad                       ", &
				"wither                        ", "field                         ", "I'm ready to interface with u " /)
	! Initialize group226
  group226 = (/ "can bring person back to life ", "illustrator                   ", "hyena                         ", &
				"burnt umber                   ", "scarf                         ", "tiefling                      " /)
	! Initialize group227
  group227 = (/ "toque                         ", "an object by magic            ", "interpreter                   ", &
				"warthog                       ", "Rasp: harsh, grating sound    ", "scattered                     " /)
	! Initialize group228
  group228 = (/ "goat                          ", "distributor                   ", "lamp                          ", &
				"one of his or her own bones   ", "tack or jibing                ", "shoreline                     " /)
	! Initialize group229
  group229 = (/ "forging                       ", "eland                         ", "doesn't know why has stopped  ", &
				"stream                        ", "marketing director            ", "person has been turned into   " /)
	! Initialize group230
  group230 = (/ "news anchor                   ", "more valuable then real thing ", "follow                        ", &
				"amulet                        ", "telepathy                     ", "summit                        " /)
	! Initialize group231
  group231 = (/ "use a key whittled out of     ", "farm worker                   ", "Slurp: loud, sucking sound    ", &
				"finch                         ", "sit down                      ", "pegasus                       " /)
	! Initialize group232
  group232 = (/ "gloves                        ", "revive                        ", "for this one reason           ", &
				"deeply enough                 ", "footballer                    ", "revise                        " /)
	! Initialize group233
  group233 = (/ "kangaroo                      ", "enough people believe in it   ", "relic                         ", &
				"master                        ", "benevolence                   ", "aging                         " /)
	! Initialize group234
  group234 = (/ "discuss                       ", "earring                       ", "hopes of bringing a costly war", &
				"qualify                       ", "pest controller               ", "stagecoach                    " /)
	! Initialize group235
  group235 = (/ "coroner                       ", "to a quicker resolution       ", "happen                        ", &
				"forger's fake work's of art   ", "retire                        ", "phoenix                       " /)
	! Initialize group236
  group236 = (/ "dadaist-conclusion = epilogue ", "recommend                     ", "style that pleases the owner  ", &
				"barrister                     ", "newt                          ", "bring me a shrubbery          " /)
	! Initialize group237
  group237 = (/ "petri dish                    ", "taking there place, underworld", "lucky                         ", &
				"jungle                        ", "gamekeeper                    ", "Tink: light, metallic tap     " /)
	! Initialize group238
  group238 = (/ "polar bear                    ", "financial advisor             ", "anything becomes true if      ", &
				"embrace                       ", "waterspout                    ", "emphasise                     " /)
	! Initialize group239
  group239 = (/ "into attacking one another    ", "sleeping                      ", "assistant                     ", &
				"prompt                        ", "the most precious commodities ", "headless rider                " /)
	! Initialize group240
  group240 = (/ "bounce                        ", "chiropodist                   ", "walking                       ", &
				"Whiff: brief air/scent passing", "they find the skeleton of a   ", "bumble bee                    " /)
	! Initialize group241
  group241 = (/ "meterologist                  ", "this is the most              ", "inherit                       ", &
				"flowers from this garden are  ", "frighten                      ", "hartebeest                    " /)
	! Initialize group242
  group242 = (/ "in all the land               ", "smell                         ", "the serpants lovely           ", &
				"sportsperson                  ", "she made a noble sacrifice,   ", "siren, in greek mythology     " /)
	! Initialize group243
  group243 = (/ "rise                          ", "connected to a particular     ", "architect                     ", &
				"when between twin demigods    ", "burger joint                  ", "a reptillian humanoid         " /)
	! Initialize group244
  group244 = (/ "screwdriver                   ", "classify                      ", "miners discover stone spheres ", &
				"proves to be their downfall   ", "interior designer             ", "Yowl:mournful cry cat/a person" /)
	! Initialize group245
  group245 = (/ "IT consultant                 ", "turns out he's incompetent    ", "bosun's pipe                  ", &
				"enhance                       ", "Darek's mask 1000 faces again ", "cruise ship                   " /)
	! Initialize group246
  group246 = (/ "mansion                       ", "incur                         ", "with strange markings         ", &
				"meter reader                  ", "wildcat                       ", "loch ness monster             " /)
	! Initialize group247
  group247 = (/ "for a very good reason        ", "hammer                        ", "antique store                 ", &
				"literary agent                ", "water kelpie                  ", "enable                        " /)
	! Initialize group248
  group248 = (/ "recall                        ", "to permanent wind             ", "prop wash                     ", &
				"finds a century-old catalog,  ", "costume designer              ", "radiation has escaped         " /)
	! Initialize group249
  group249 = (/ "lighter                       ", "worry                         ", "sails itself into the harbor  ", &
				"managing director             ", "he's been hiding in the       ", "cyclops                       " /)
	! Initialize group250
  group250 = (/ "Chant:rhythmic, repeated words", "safety pin                    ", "definition                    ", &
				"ride                          ", "jockey                        ", "assigned to be a bodyguard to " /)
	! Initialize group251
  group251 = (/ "hypnotherapist                ", "for this society, battle is a ", "lower                         ", &
				"it darkens the skies          ", "bar                           ", "department store              " /)
	! Initialize group252
  group252 = (/ "hardware store                ", "determine                     ", "management consultant         ", &
				"gopher                        ", "soldiers take souvenirs from  ", "it's such a hassle that many  " /)
	! Initialize group253
  group253 = (/ "eat automatically             ", "assembly line worker          ", "gather                        ", &
				"sauna                         ", "unforeseen complications      ", "cage                          " /)
	! Initialize group254
  group254 = (/ "tackle                        ", "queen's crown                 ", "lap dancer                    ", &
				"what they were all told       ", "jewelry store                 ", "hunters track down fugitives  " /)
	! Initialize group255
  group255 = (/ "perfume                       ", "Hrimfaxi                      ", "two factions                  ", &
				"crown prosecutor              ", "balcony                       ", "continue                      " /)
	! Initialize group256
  group256 = (/ "aromatherapist                ", "people are bidding a lot more ", "forbid                        ", &
				"Glide: smooth,flowing movement", "and psychological triggers,   ", "armisael                      " /)
	! Initialize group257
  group257 = (/ "green house                   ", "wave                          ", "country and lead a rebellion  ", &
				"drug that makes people        ", "park ranger                   ", "hippocampus                   " /)
	! Initialize group258
  group258 = (/ "the huge, thin sheets of      ", "climbing                      ", "corn maze                     ", &
				"clerical assistant            ", "polyxo                        ", "alter the timeline            " /)
	! Initialize group259
  group259 = (/ "carrying a delivery           ", "citizens are temporarily      ", "psychologist                  ", &
				"haizum                        ", "food truck                    ", "Rust: metal/wood deteriorating" /)
	! Initialize group260
  group260 = (/ "sidewalk                      ", "a tree                        ", "an ancient treasure, the      ", &
				"preacher                      ", "term                          ", "algorithm from, house / life  " /)
	! Initialize group261
  group261 = (/ "tour guide                    ", "magic book                    ", "omit                          ", &
				"an unforeseen threat          ", "dump                          ", "to communicate directly with  " /)
	! Initialize group262
  group262 = (/ "marina                        ", "luminous beings are we, not   ", "a lock                        ", &
				"planet,even though a religious", "baggage handler               ", "spare                         " /)
	! Initialize group263
  group263 = (/ "very core                     ", "map                           ", "a full recovery               ", &
				"surgeon                       ", "this crude matter             ", "summer camp                   " /)
	! Initialize group264
  group264 = (/ "[f(x)=\text{'wonder unaware'}]", "this muse inspires            ", "engineer                      ", &
				"movie theater                 ", "taste                         ", "foras                         " /)
	! Initialize group265
  group265 = (/ "Neal's decrypting Turing back ", "concern                       ", "bring this new king to, throne", &
				"mortician                     ", "a beautiful unmanned ship     ", "greeting card                 " /)
	! Initialize group266
  group266 = (/ "pin                           ", "tiny                          ", "lorry driver                  ", &
				"unhappy and do more of what   ", "Sulis                         ", "crisis                        " /)
	! Initialize group267
  group267 = (/ "one of the richest men in the ", "prison officer                ", "crazy                         ", &
				"plantation                    ", "humankind finds a             ", "decline                       " /)
	! Initialize group268
  group268 = (/ "troll                         ", "downbeat                      ", "underwater for long periods of", &
				"piece of junk                 ", "bodyguard                     ", "accommodate                   " /)
	! Initialize group269
  group269 = (/ "mushroom                      ", "planet, so they simply abduct ", "distinguish                   ", &
				"housekeeper                   ", "backyard                      ", "Bai ze                        " /)
	! Initialize group270
  group270 = (/ "Swoop: descending bird/object ", "because it's too hard to      ", "theia                         ", &
				"and helps an alien race resist", "massage therapist             ", "confess                       " /)
	! Initialize group271
  group271 = (/ "plasterer                     ", "envisage                      ", "new zoos are filled with      ", &
				"police station                ", "photo album                   ", "woman is hunted by her clone, " /)
	! Initialize group272
  group272 = (/ "accumulate                    ", "being is playing her life like", "school crossing warden        ", &
				"screw                         ", "frightened                    ", "in this world, Napoleon's army" /)
	! Initialize group273
  group273 = (/ "causing an interplanetary     ", "cursed                        ", "wipe                          ", &
				"heating engineer              ", "two allies                    ", "refrigerator                  " /)
	! Initialize group274
  group274 = (/ "garden designer               ", "corporations synthesize and   ", "purse                         ", &
				"snowstorms                    ", "brave                         ", "analyse                       " /)
	! Initialize group275
  group275 = (/ "wall                          ", "cabinet maker                 ", "psychological trauma can be   ", &
				"attempt                       ", "carry out a mission           ", "seat belt                     " /)
	! Initialize group276
  group276 = (/ "pull                          ", "tree in the forest            ", "knights helm                  ", &
				"and shows, and they use it to ", "barbershop                    ", "humanity                      " /)
	! Initialize group277
  group277 = (/ "beautiful                     ", "instead of coke               ", "flight attendant              ", &
				"due to proteins in their      ", "design                        ", "tataka                        " /)
	! Initialize group278
  group278 = (/ "cottage                       ", "dietician                     ", "a much different purpose then ", &
				"commence                      ", "human and alien fall in love, ", "magnet                        " /)
	! Initialize group279
  group279 = (/ "giant                         ", "human then unable to get out  ", "daycare                       ", &
				"private investigator          ", "tip                           ", "playing card deck             " /)
	! Initialize group280
  group280 = (/ "beetle                        ", "vineyard                      ", "energy source that powers     ", &
				"gasp                          ", "Tremor: vibrating, earth-move ", "market trader                 " /)
	! Initialize group281
  group281 = (/ "human has done any writing of ", "lunch room                    ", "poisoned                      ", &
				"leaflet distributor           ", "situate                       ", "bottle                        " /)
	! Initialize group282
  group282 = (/ "key                           ", "hacks                         ", "teddie bear                   ", &
				"people from a civilization    ", "run                           ", "very strong                   " /)
	! Initialize group283
  group283 = (/ "dreaming                      ", "skeleton of a twelve-foot-tall", "bank                          ", &
				"circus worker                 ", "meet                          ", "available                     " /)
	! Initialize group284
  group284 = (/ "beauty therapist              ", "octopus                       ", "organs for successful         ", &
				"opt                           ", "complex, engrossing           ", "arcade                        " /)
	! Initialize group285
  group285 = (/ "littal did he know            ", "the first time travelers seem ", "fork-lift driver              ", &
				"characters controlled by the  ", "carnival                      ", "situate                       " /)
	! Initialize group286
  group286 = (/ "cauldron                      ", "disc jockey                   ", "teach                         ", &
				"photo booth                   ", "was tampered with during the  ", "changeling thought she was    " /)
	! Initialize group287
  group287 = (/ "mp3 player                    ", "cars and weave through heavy  ", "bear                          ", &
				"bank manager                  ", "tap                           ", "Gush:forceful water/air escape" /)
	! Initialize group288
  group288 = (/ "stern of the ship             ", "an ally                       ", "hibernation when the cures to ", &
				"thank                         ", "thermometer                   ", "amphisbaena                   " /)
	! Initialize group289
  group289 = (/ "coastguard                    ", "beaver rodent                 ", "nursing home                  ", &
				"bodies to others; they go into", "black pudding                 ", "impose                        " /)
	! Initialize group290
  group290 = (/ "that many see as unfair       ", "trident                       ", "want to be an independent     ", &
				"aquarium                      ", "interrupt                     ", "walking corpse                " /)
	! Initialize group291
  group291 = (/ "winged kobold                 ", "the foul creature was         ", "paramedic                     ", &
				"cry                           ", "important then vision/hearing ", "rest stop                     " /)
	! Initialize group292
  group292 = (/ "magic herbs                   ", "rapid mutations               ", "conform                       ", &
				"collage campus                ", "auditor                       ", "aeorian absorber              " /)
	! Initialize group293
  group293 = (/ "Tread: measured footsteps     ", "wood elf wizard               ", "volunteers to colonize the    ", &
				"rent                          ", "people with the genetic       ", "shoe store                    " /)
	! Initialize group294
  group294 = (/ "school meals supervisor       ", "attempts to place an order,   ", "fire station                  ", &
				"collapse                      ", "global warming                ", "ice mephit                    " /)
	! Initialize group295
  group295 = (/ "development and function      ", "bloom                         ", "school                        ", &
				"the middle of a lava lake     ", "street entertainer            ", "litch                         " /)
	! Initialize group296
  group296 = (/ "shout                         ", "they get implants that make   ", "Hoot: deep, resonant of an owl", &
				"allip                         ", "waiting room                  ", "animal then unable to get out " /)
	! Initialize group297
  group297 = (/ "peacock                       ", "govern                        ", "government program infiltrates", &
				"predisposition to dislike     ", "refuse collector              ", "boxing club                   " /)
	! Initialize group298
  group298 = (/ "barometer                     ", "time and place by mistake,    ", "bounce                        ", &
				"underground                   ", "myconid adult                 ", "after she becomes pregnant,   " /)
	! Initialize group299
  group299 = (/ "machine or an average-sized   ", "blood hunter                  ", "contain                       ", &
				"food court                    ", "memories, which can give      ", "window cleaner                " /)
	! Initialize group300
  group300 = (/ "expensive                     ", "where they were               ", "it's now widely know that     ", &
				"paper                         ", "airplane                      ", "picture framer                " /)
	! Initialize group301
  group301 = (/ "he commands the dragonflies   ", "moorbounder                   ", "papyrus                       ", &
				"drugs directly to the site    ", "tailor                        ", "barn                          " /)
	! Initialize group302
  group302 = (/ "telephone                     ", "allowed to procreate          ", "needle                        ", &
				"unless he uses himself as a   ", "tyranasaurus rex              ", "pizzaria                      " /)
	! Initialize group303
  group303 = (/ "bailiff                       ", "captains cabin                ", "has never been easier         ", &
				"succuubus or incubus          ", "Ripple: water disturbance     ", "attempting to bring people    " /)
	! Initialize group304
  group304 = (/ "a windward vessel             ", "believing s/he will fit in    ", "barlgura                      ", &
				"salesperson                   ", "balloon                       ", "whiskey bar                   " /)
	! Initialize group305
  group305 = (/ "novels into interactive       ", "artist                        ", "that can sing beethoven       ", &
				"leeward                       ", "flying sword                  ", "fast food restaurant          " /)
	! Initialize group306
  group306 = (/ "thrust                        ", "a leeward vessel              ", "canopic golem                 ", &
				"flea market                   ", "moth                          ", "when a person first gets a new" /)
	! Initialize group307
  group307 = (/ "picture frame                 ", "this particular job or mission", "surveyor                      ", &
				"fuck                          ", "piercer monster               ", "windward                      " /)
	! Initialize group308
  group308 = (/ "pit fiend                     ", "hurry                         ", "Kelesy's teaching flamadiddles", &
				"coffee shop                   ", "there's a stranger in the     ", "osteopath                     " /)
	! Initialize group309
  group309 = (/ "except it's not really a      ", "casino                        ", "forepeak                      ", &
				"counterintelligence           ", "pickpocket                    ", "advise                        " /)
	! Initialize group310
  group310 = (/ "Caw:raucous,of a crow or raven", "pandemic was created but kept ", "detention of armed vessel     ", &
				"porthole or scuttle           ", "machinist                     ", "hasn't increased              " /)
	! Initialize group311
  group311 = (/ "destruction of federal records", "building labourer             ", "fascinating characters        ", &
				"equip                         ", "shield gaurdian               ", "music note                    " /)
	! Initialize group312
  group312 = (/ "war axe                       ", "a way to rapidly grow huge    ", "certification of checks(fraud)", &
				"view                          ", "adult red dragon              ", "button                        " /)
	! Initialize group313
  group313 = (/ "baggywrinkle                  ", "bokay of flowers              ", "in the realm...               ", &
				"unexpected symptoms in        ", "sea caves or littoral caves   ", "mad scientist                 " /)
	! Initialize group314
  group314 = (/ "and now, as a ghost,          ", "art dealer                    ", "gnoll pack lord               ", &
				"divide                        ", "center of the earth to obtain ", "anchor                        " /)
	! Initialize group315
  group315 = (/ "mooring chain                 ", "intimately involved with that ", "remind                        ", &
				"domestic security             ", "auctioneer                    ", "mythical                      " /)
	! Initialize group316
  group316 = (/ "out why                       ", "migrate across this land      ", "far away                      ", &
				"laugh                         ", "yarn shop                     ", "Echo:repeat/reflect,sound wave" /)
	! Initialize group317
  group317 = (/ "camera operator               ", "drawing by hand, which has a  ", "compass                       ", &
				"chiropractor's office         ", "blind and/or deaf             ", "test subject and documents the" /)
	! Initialize group318
  group318 = (/ "snap togther                  ", "air freshener                 ", "ones, and cuddly robot kittens", &
				"physiotherapist               ", "lounge                        ", "yochlol                       " /)
	! Initialize group319
  group319 = (/ "tourists on a ghost tour,     ", "candy store                   ", "wishing well                  ", &
				"crematorium worker            ", "control them in waking life   ", "presume                       " /)
	! Initialize group320
  group320 = (/ "toll                          ", "witches wand                  ", "predict the success of the    ", &
				"jail                          ", "singer                        ", "sponge                        " /)
	! Initialize group321
  group321 = (/ "kenku                         ", "some very peculiar items      ", "communicate                   ", &
				"someone on whom the fate      ", "broadcaster                   ", "classroom                     " /)
	! Initialize group322
  group322 = (/ "designer                      ", "a painful injury              ", "person has the ability to make", &
				"people are beginning to recall", "Bellow:deep roar,in pain/anger", "speakers                      " /)
	! Initialize group323
  group323 = (/ "foot print                    ", "park and resort, built at a   ", "toe ring                      ", &
				"just like her, and learns she ", "swarm of animated books       ", "leap                          " /)
	! Initialize group324
  group324 = (/ "straight direction            ", "sentence                      ", "helmed horror                 ", &
				"archivist                     ", "one person begins to notice   ", "packing peanuts               " /)
	! Initialize group325
  group325 = (/ "car wash                      ", "they made him into a super    ", "conditioner                   ", &
				"print                         ", "githyanki warrior             ", "probation officer             " /)
	! Initialize group326
  group326 = (/ "bus driver                    ", "puzzle piece                  ", "become a trendy alternative to", &
				"block                         ", "a time traveler from centuries", "taxi driver                   " /)
	! Initialize group327
  group327 = (/ "realizes the paperwork, files ", "rusty nail                    ", "bricklayer                    ", &
				"street corner                 ", "consequences                  ", "money laundering              " /)
	! Initialize group328
  group328 = (/ "Hum:low,steady,like that/a bee", "wait                          ", "scientists put them to a      ", &
				"goblin boss                   ", "flag                          ", "rudder                        " /)
	! Initialize group329
  group329 = (/ "tampering with vessels        ", "over the property of wealthy  ", "banana                        ", &
				"grove                         ", "minister                      ", "act                           " /)
	! Initialize group330
  group330 = (/ "Djembe                        ", "suck                          ", "horticulturalist              ", &
				"office cubicle                ", "pillow                        ", "domestic violence             " /)
	! Initialize group331
  group331 = (/ "yoga instructor               ", "screen for                    ", "a scientist learns the real   ", &
				"drown                         ", "swimming pool                 ", "chasme                        " /)
	! Initialize group332
  group332 = (/ "someone gets on the elevator  ", "spirit naga                   ", "bartender                     ", &
				"shed                          ", "Howl:doleful cry of a dog/wolf", "eye liner                     " /)
	! Initialize group333
  group333 = (/ "correspond                    ", "the metamaterial suit is so   ", "karaoke bar                   ", &
				"mailing threatening stuff     ", "relatives for decades and find", "radio presenter               " /)
	! Initialize group334
  group334 = (/ "circus tent                   ", "computer programmer           ", "this church holds bizarre     ", &
				"so they created artificial    ", "spoil                         ", "garage sale                   " /)
	! Initialize group335
  group335 = (/ "basketball court              ", "kingdom                       ", "false pretenses               ", &
				"his series of unfortunate     ", "skitterwidget                 ", "winch                         " /)
	! Initialize group336
  group336 = (/ "engineered virus wipes out    ", "drawbridge                    ", "believes she's destroying an  ", &
				"Ding: short made by small bell", "councillor                    ", "cellar                        " /)
	! Initialize group337
  group337 = (/ "quaggoth                      ", "mistake                       ", "garage                        ", &
				"transportation of slaves from ", "it.                           ", "particle accelerator opens up " /)
	! Initialize group338
  group338 = (/ "diver                         ", "keel hauling                  ", "pet store                     ", &
				"of subliminal messages in     ", "it always happens when        ", "lotion                        " /)
	! Initialize group339
  group339 = (/ "survive                       ", "rightfully placed on          ", "Purr: vibrating, contented cat", &
				"hacked the latest election    ", "mummy lord                    ", "subway                        " /)
	! Initialize group340
  group340 = (/ "the television switches to    ", "draw                          ", "river has a soul of it's own  ", &
				"tree house                    ", "gas fitter                    ", "overthrow of government       " /)
	! Initialize group341
  group341 = (/ "goristro                      ", "freed from enchantment        ", "golf course                   ", &
				"downwind                      ", "360 degrees                   ", "given time                    " /)
	! Initialize group342
  group342 = (/ "remote                        ", "bow tie                       ", "madness                       ", &
				"is caught in a long time loop ", "derive                        ", "unemployment office           " /)
	! Initialize group343
  group343 = (/ "destruction of a facility     ", "danger                        ", "hassle-free, no one wants     ", &
				"understand                    ", "travel agent                  ", "darkmantle                    " /)
	! Initialize group344
  group344 = (/ "person of the 21st century    ", "Roar: prolonged cry lion/wild ", "retain                        ", &
				"gymnasium                     ", "speech therapist              ", "hair tie                      " /)
	! Initialize group345
  group345 = (/ "reflect                       ", "she gives birth to surprising ", "morgue                        ", &
				"local govt worker             ", "abyssal wretch                ", "insurance fraud               " /)
	! Initialize group346
  group346 = (/ "bubble gum                    ", "borrow                        ", "children, and so on           ", &
				"doing it anyways... and the   ", "baseball park                 ", "lizardfolk king               " /)
	! Initialize group347
  group347 = (/ "something horrible that       ", "herbalist                     ", "label                         ", &
				"sailmaker's palm              ", "racketeering                  ", "upwind                        " /)
	! Initialize group348
  group348 = (/ "murmur                        ", "they command the butterflies  ", "airport                       ", &
				"stockings                     ", "butcher                       ", "corporation patents the       " /)
	! Initialize group349
  group349 = (/ "gift                          ", "online bullying is made a     ", "long-lost                     ", &
				"subliminal coded messages in  ", "counter                       ", "at this auction               " /)
	! Initialize group350
  group350 = (/ "Shriek:high-pitched cry/scream", "sponsor                       ", "warehouse                     ", &
				",and raise humans of their own", "pastry chef                   ", "pineapple                     " /)
	! Initialize group351
  group351 = (/ "landlord                      ", "an unconscious state while    ", "defeat                        ", &
				"ransom money                  ", "rock concert                  ", "duergar                       " /)
	! Initialize group352
  group352 = (/ "close quarters with a         ", "criticise                     ", "virtual worlds filled with    ", &
				"zoo                           ", "portal                        ", "sexual abuse                  " /)
	! Initialize group353
  group353 = (/ "light                         ", "technology for the first time,", "telephonist                   ", &
				"pawn shop                     ", "mission is morally            ", "mind flayer                   " /)
	! Initialize group354
  group354 = (/ "galley                        ", "pawnbroker                    ", "spoon                         ", &
				"bond default                  ", "time due to a protein called  ", "sue                           " /)
	! Initialize group355
  group355 = (/ "neighbour                     ", "person heroically accepts the ", "grapefruit                    ", &
				"roll                          ", "Toll:bell struck/slowly-death ", "bakery                        " /)
	! Initialize group356
  group356 = (/ "humans aren't able to perceive", "ships keel                    ", "patio                         ", &
				"senior watch officer          ", "he doesn't just have bad luck:", "amonkhet                      " /)
	! Initialize group357
  group357 = (/ "face                          ", "were real are simulations     ", "abominable yeti               ", &
				"specific body, ther age,      ", "USB flash drive               ", "marlinspike                   " /)
	! Initialize group358
  group358 = (/ "require                       ", "video voyeurism               ", "arboretum                     ", &
				"finds one                     ", "detective specializes in      ", "temporary gilmour             " /)
	! Initialize group359
  group359 = (/ "chuul                         ", "killer places an advertisement", "assassination                 ", &
				"Warble:sing-trilling/quavering", "ambulance                     ", "cost                          " /)
	! Initialize group360
  group360 = (/ "and succeeds                  ", "door                          ", "she receives an unexpected    ", &
				"fancy                         ", "playground                    ", "jacob's ladder (nautical)     " /)
	! Initialize group361
  group361 = (/ "blindfolded                   ", "a previously unknown sea      ", "research                      ", &
				"birds and butterflies are able", "desktop publisher             ", "street lights                 " /)
	! Initialize group362
  group362 = (/ ",an instance of starvation and", "helm                          ", "Breeze: gentle,wind felt/heard", &
				"milk                          ", "web developer                 ", "beholder                      " /)
	! Initialize group363
  group363 = (/ "bookkeeping clerk             ", "reunited, lost child          ", "since cockroaches are nearly  ", &
				"behave                        ", "clay golem                    ", "flight to avoid prosecution   " /)
	! Initialize group364
  group364 = (/ "ski slope                     ", "supply                        ", "dark elf                      ", &
				"she found out why             ", "loan officer                  ", "technologically advanced      " /)
	! Initialize group365
  group365 = (/ "shape                         ", "sand paper                    ", "sprite                        ", &
				"his or her followers          ", "armed robbery                 ", "presence                      " /)
	! Initialize group366
  group366 = (/ "scientists bore into the      ", "maintenance worker            ", "supply and to all beverages   ", &
				"Chirp:short,sharp-bird/insects", "connect                       ", "gas station                   " /)
	! Initialize group367
  group367 = (/ "ancient copper dragon         ", "specify                       ", "hotel                         ", &
				"novel                         ", "from adolescence on up, even  ", "who resisted implants         " /)
	! Initialize group368
  group368 = (/ "school psychologist           ", "partial birth abortion        ", "mysterious old book           ", &
				"drugs and medical treatments  ", "a face stares up              ", "travel                        " /)
	! Initialize group369
  group369 = (/ "disappear                     ", "the beach                     ", "bracelet                      ", &
				"victorian london              ", "bullywug                      ", "space alone for the rest of   " /)
	! Initialize group370
  group370 = (/ "warming worked too well, and  ", "charge                        ", "empathy certificate           ", &
				"occupational therapist        ", "shoe lace                     ", "contempt of court             " /)
	! Initialize group371
  group371 = (/ "serial murders                ", "procedure impossible for a    ", "want                          ", &
				"sleepwalking and doing strange", "cemetery                      ", "androsphinx                   " /)
	! Initialize group372
  group372 = (/ "repair worker                 ", "place                         ", "a musician practices          ", &
				"offers to take the place of   ", "monitor                       ", "skate park                    " /)
	! Initialize group373
  group373 = (/ "body of the surving sibling   ", "ambulance station             ", "enforce                       ", &
				"clockwork dragon              ", "individual begins seeing and  ", "cost estimator                " /)
	! Initialize group374
  group374 = (/ "farmer's field                ", "more dramatic now that people ", "treason                       ", &
				"except this one thing         ", "swarm of undead snakes        ", "firefighter                   " /)
	! Initialize group375
  group375 = (/ "argue                         ", "security guard                ", "grove grow in strange bent    ", &
				"shovel                        ", "construction before,          ", "efeeti                        " /)
	! Initialize group376
  group376 = (/ "Clap:sudden,loud striking hand", "ubiquitous video recording by ", "race                          ", &
				"someone is shrunk to a tiny   ", "blues bar                     ", "electrical engineer           " /)
	! Initialize group377
  group377 = (/ "when putting together a slide ", "aid                           ", "lobby                         ", &
				"DUI on federal property       ", "solar                         ", "bottle cap                    " /)
	! Initialize group378
  group378 = (/ "foredeck                      ", "show for a wedding, someone   ", "canvas                        ", &
				"the government have led to a  ", "examine                       ", "husk zombie                   " /)
	! Initialize group379
  group379 = (/ "environmental scientist       ", "perjury                       ", "green hag                     ", &
				"...but he's changed           ", "precede                       ", "whales and dolphins can be    " /)
	! Initialize group380
  group380 = (/ "forcible rape                 ", "deceased man who lived alone  ", "debate                        ", &
				"liquor store                  ", "cluttered apartment of a      ", "spar on a ship                " /)
	! Initialize group381
  group381 = (/ "elderly, robot workers have   ", "hot tub                       ", "vampire                       ", &
				"human resources assistant     ", "Crunch: noisy, chewed/crushed ", "an international videogaming  " /)
	! Initialize group382
  group382 = (/ "camp site                     ", "shift                         ", "boom box                      ", &
				"contains a revolutionary      ", "recreational therapist        ", "synthesizes huge amounts of   " /)
	! Initialize group383
  group383 = (/ "consume                       ", "maximum-security prison on    ", "water weird                   ", &
				"special use                   ", "puddle                        ", "painter                       " /)
	! Initialize group384
  group384 = (/ "adult sapphire dragon         ", "IT manager                    ", "breeding modern humans with   ", &
				"shopping mall                 ", "air force uses invisibility   ", "mop                           " /)
	! Initialize group385
  group385 = (/ "brocolli                      ", "coach                         ", "ghast                         ", &
				"time that they are one of the ", "cockpit                       ", "the virtual realm             " /)
	! Initialize group386
  group386 = (/ "medical secretary             ", "mission, he'll be working in  ", "stage                         ", &
				"global warming prompts        ", "claiming citizenship          ", "tennis court                  " /)
	! Initialize group387
  group387 = (/ "does exactly what he did      ", "crave                         ", "pomegranate                   ", &
				"tandoori chef                 ", "young man confesses to a      ", "fire elemental monster        " /)
	! Initialize group388
  group388 = (/ "courtyard                     ", "outlawed their activities     ", "sofa                          ", &
				"amethyst greatwyrm            ", "double                        ", "weekend adventurers explore a " /)
	! Initialize group389
  group389 = (/ "induce                        ", "product tampering             ", "says she's a virgin           ", &
				"general practitioner          ", "recordings of dreams has      ", "plot a course                 " /)
	! Initialize group390
  group390 = (/ "shadow demon                  ", "group by telling made-up      ", "convince                      ", &
				"tomato                        ", "new device automatically track", "microbiologist                " /)
	! Initialize group391
  group391 = (/ "to take it back               ", "Drip: liquid falling drop/drop", "goes way too far              ", &
				"test                          ", "centuries ago                 ", "computer systems administrator" /)
	! Initialize group392
  group392 = (/ "pharmacist                    ", "sibling rivalry is intense    ", "revenant                      ", &
				"way                           ", "undergo illegal genetic       ", "game store                    " /)
	! Initialize group393
  group393 = (/ "only they understand          ", "in                            ", "patrol officer                ", &
				"skeleton key                  ", "various places around the city", "crypt                         " /)
	! Initialize group394
  group394 = (/ "payday loan store             ", "mother's young child          ", "a person                      ", &
				"where any person is at any    ", "wake                          ", "lizardfolk queen              " /)
	! Initialize group395
  group395 = (/ "Grind: harsh,scraping/2-rubbed", "all marriages must be approved", "enquire                       ", &
				"pressurized cargo hold        ", "returned to her own kind      ", "wine                          " /)
	! Initialize group396
  group396 = (/ "differ                        ", "plane hangar                  ", "password                      ", &
				"strong shock of static        ", "flesh golem                   ", "centuries ago, such as        " /)
	! Initialize group397
  group397 = (/ "obstruction of a federal audit", "they will find out soon enough", "neglect                       ", &
				"marlith                       ", "hockey arena                  ", "cork                          " /)
	! Initialize group398
  group398 = (/ "laundromat                    ", "comply                        ", "reporter                      ", &
				"bride on her honeymoon        ", "no one knows who made the     ", "deodorant                     " /)
	! Initialize group399
  group399 = (/ "druidic boline                ", "high-speed robotic horses     ", "weigh                         ", &
				"record of them                ", "personal care aide            ", "forced labor                  " /)
	! Initialize group400
  group400 = (/ "aspect                        ", "cannabis grow operation       ", "carrot                        ", &
				"suspect that her consciousness", "falsifying records            ", "humanitarian thief sets out to" /)
	! Initialize group401
  group401 = (/ "adorable pets                 ", "mechanical engineer           ", "vaccine for the deadly flu    ", &
				"suppose                       ", "rooftop garden                ", "sharpie                       " /)
	! Initialize group402
  group402 = (/ "checkbook                     ", "your mood levels and emotions ", "associate                     ", &
				"possible between the humans   ", "broom of animated attack      ", "fair grounds                  " /)
	! Initialize group403
  group403 = (/ "but nobody believes her       ", "gain                          ", "the office water cooler       ", &
				"controller                    ", "huge volcano has obviously    ", "market research analyst       " /)
	! Initialize group404
  group404 = (/ "algebra                       ", "Knock:sharp-hitting surface of", "spies use tiny implants in the", &
				"resume                        ", "civil engineer                ", "responds to them              " /)
	! Initialize group405
  group405 = (/ "drafter                       ", "delivering and receiving a    ", "cancel                        ", &
				"owlbear                       ", "hate crimes                   ", "outlet                        " /)
	! Initialize group406
  group406 = (/ "planet is reduced to a        ", "free                          ", "thrift shop                   ", &
				"ancestral puebloans in the    ", "floor                         ", "storm giant                   " /)
	! Initialize group407
  group407 = (/ "art gallery                   ", "so many birds or butterflies  ", "condemn                       ", &
				"-hearing, eyesight, ect.      ", "police misconduct             ", "gelatinous cube               " /)
	! Initialize group408
  group408 = (/ "than money                    ", "fundraise                     ", "aliens on this planet are     ", &
				"drive-by shooting             ", "statistician                  ", "people in a town begin        " /)
	! Initialize group409
  group409 = (/ "knife                         ", "performance-enhancing drugs,  ", "frown                         ", &
				"she wakes up in the middle of ", "diagnostic medical sonographer", "Ping: short,high-pitch ringing" /)
	! Initialize group410
  group410 = (/ "geometry                      ", "prove                         ", "translucent skin and birds    ", &
				"freak show                    ", "can be tailored to a patient's", "rag                           " /)
	! Initialize group411
  group411 = (/ "social worker                 ", "zorbo                         ", "warn                          ", &
				"the hikers assumed that the   ", "spinnaker                     ", "that involve normal appliances" /)
	! Initialize group412
  group412 = (/ "particular room in the hotel  ", "constitute                    ", "inlet                         ", &
				"strip mall                    ", "...not even close             ", "auto mechanic                 " /)
	! Initialize group413
  group413 = (/ "diminish                      ", "silver dragon wyrmling        ", "utility kilt                  ", &
				"living results of an attempted", "executive assistant           ", "other than human              " /)
	! Initialize group414
  group414 = (/ "waterpark                     ", "because robot kids have become", "drill press                   ", &
				"pick                          ", "respiratory therapist         ", "false hopes for them          " /)
	! Initialize group415
  group415 = (/ "pants                         ", "facilitate                    ", "hero killed halfway through,  ", &
				"Splash: hitting/falling-water ", "dog for a pet                 ", "fire/explosives of property   " /)
	! Initialize group416
  group416 = (/ "skills and talents and ship   ", "mathematics                   ", "train                         ", &
				"fork                          ", "there are good things and bad ", "necrotic centipede            " /)
	! Initialize group417
  group417 = (/ "veterinarian                  ", "she's wrong, isn't she?       ", "dream                         ", &
				"in through the roof           ", "gaming system                 ", "centaur                       " /)
	! Initialize group418
  group418 = (/ "touch                         ", "systems analyst               ", "killer toys with there victims", &
				"leg warmers                   ", "operating room                ", "humanoid is discovered        " /)
	! Initialize group419
  group419 = (/ "apartment building            ", "child's imaginary friend      ", "subject                       ", &
				"deceased loved one, in this   ", "construction foreman          ", "bok choy                      " /)
	! Initialize group420
  group420 = (/ "thermostat                    ", "theft of trade secrets        ", "each person's spirit is       ", &
				"ban                           ", "secret from the general public", "officers' mess                " /)
	! Initialize group421
  group421 = (/ "Squeak:short,high-pitched cry ", "killing that hasn't happened  ", "pack                          ", &
				"to permanent fog              ", "truck                         ", "computer systems analyst      " /)
	! Initialize group422
  group422 = (/ "movements and everything you  ", "educate                       ", "parachutes                    ", &
				"amusement park                ", "the earth further from the sun", "troglodyte                    " /)
	! Initialize group423
  group423 = (/ "fitness worker                ", "what he's really doing        ", "waste                         ", &
				"deprivation are recruited for ", "frigate                       ", "records something alarming    " /)
	! Initialize group424
  group424 = (/ "pose                          ", "food scientist                ", "hears someone clapping for her", &
				"spiral                        ", "certain tree                  ", "slipper                       " /)
	! Initialize group425
  group425 = (/ "class room                    ", "particular species of mammal  ", "Swish:soft,moving fast through", &
				"calculus                      ", "that include extra limbs,     ", "scream                        " /)
	! Initialize group426
  group426 = (/ "desk                          ", "hill                          ", "for weeks, she felt like      ", &
				"clear                         ", "advertising is prohibitively  ", "bankruptcy                    " /)
	! Initialize group427
  group427 = (/ "mathematical                  ", "lean                          ", "contact lenses                ", &
				"village will reward the hero  ", "interrogation room            ", "refining their formula for    " /)
	! Initialize group428
  group428 = (/ "U.S. southwest, return        ", "asteroid belt                 ", "creating a hybrid of a human  ", &
				"resemble                      ", "writer that describes a       ", "griffon                       " /)
	! Initialize group429
  group429 = (/ "art director                  ", "she gets texts from a         ", "embezzlement                  ", &
				"alien species that hasn't     ", "trigonometry                  ", "Tick:light,rhythmic,like clock" /)
	! Initialize group430
  group430 = (/ "do                            ", "Antarctica blood red waterfall", "case the dead person's soul is", &
				"broccoli                      ", "aldani lobsterfolk            ", "it keeps happening in that one" /)
	! Initialize group431
  group431 = (/ "candy factory                 ", "including, empty set and set  ", "hole to an alternate universe ", &
				"experience                    ", "reason why the trees in this  ", "groundskeeper                 " /)
	! Initialize group432
  group432 = (/ "vacuum cleaner                ", "them off                      ", "assist                        ", &
				"worker learns that the tower  ", "the implants dissolve after a ", "manslaughter                  " /)
	! Initialize group433
  group433 = (/ "statistics                    ", "a person works as a designer  ", "smash                         ", &
				"he delivers pizza to what     ", "Vroom:roaring of an engine    ", "grocery store                 " /)
	! Initialize group434
  group434 = (/ "terrain or outer space travel ", "colour                        ", "actuary                       ", &
				"brig                          ", "human population, it becomes  ", "kobold                        " /)
	! Initialize group435
  group435 = (/ "substance abuse counselor     ", "Skinfaxi                      ", "increasingly erratic ways     ", &
				"carve                         ", "or celebrity exerts mind      ", "convenience store             " /)
	! Initialize group436
  group436 = (/ "express                       ", "Whack: sharp/heavy blow/sound ", "mathematize                   ", &
				"original owner shows up       ", "budget analyst                ", "demesticate elephants, and the" /)
	! Initialize group437
  group437 = (/ "landscaper                    ", "attached to the hair          ", "introduce                     ", &
				"up at this specific, random   ", "involving controlled substance", "chopsticks                    " /)
	! Initialize group438
  group438 = (/ "baron landscape               ", "swarms of insects appear in   ", "extreme elective surgery is   ", &
				"lead                          ", "skinneri silver maple         ", "azer                          " /)
	! Initialize group439
  group439 = (/ "computers or other machines to", "characterise                  ", "thread                        ", &
				"residents company             ", "sous-chef                     ", "Zap:sudden short,sharp sound/s" /)
	! Initialize group440
  group440 = (/ "reduce                        ", "and more                      ", "probability                   ", &
				"halfway through the meal, he  ", "sea serpant                   ", "colorado blue spruce          " /)
	! Initialize group441
  group441 = (/ "sports coach                  ", "bitter rival                  ", "steal the secrets to the      ", &
				"evolve                        ", "false claim                   ", "red cap                       " /)
	! Initialize group442
  group442 = (/ "Nebu:soft,rustling palm-breeze", "hippogriph                    ", "year befor it occurred        ", &
				"hold                          ", "people prefer                 ", "speech-language pathologist   " /)
	! Initialize group443
  group443 = (/ "they are building will serve  ", "chat                          ", "people become human mood rings", &
				"lamp shade                    ", "young blue dragon             ", "retaliating against           " /)
	! Initialize group444
  group444 = (/ "Thank You                     ", "metabolism can be safely      ", "receive                       ", &
				"facial recognition and        ", "tire swing                    ", "insurance agent               " /)
	! Initialize group445
  group445 = (/ "arithmetic                    ", "occur                         ", "discovered                    ", &
				"it's a prison break...        ", "computer support specialist   ", "kappa                         " /)
	! Initialize group446
  group446 = (/ "loan shark                    ", "has turned out to be a        ", "enjoy                         ", &
				"mathemagician                 ", "manticore                     ", "goldspire sugar maple         " /)
	! Initialize group447
  group447 = (/ "ghoul                         ", "conduct                       ", "frightening events in a small ", &
				"service representative        ", "there's actually a good reason", "potato                        " /)
	! Initialize group448
  group448 = (/ "terrible historical event a   ", "banshee                       ", "teacher assistant             ", &
				"the course of human events    ", "number theory                 ", "Khepri:hum/scarab beetles-sand" /)
	! Initialize group449
  group449 = (/ "organize                      ", "hold of her                   ", "play macbeth by name, but     ", &
				"leprechaun                    ", "cases/spontaneous conbustion  ", "tropical                      " /)
	! Initialize group450
  group450 = (/ "mathematized                  ", "invisible small child take    ", "heat                          ", &
				"happened long before the      ", "audience chamber              ", "colonists have been assured   " /)
	! Initialize group451
  group451 = (/ "executive officer             ", "Sekhmet: roar/lion-arid plains", "minotaur is not just a myth   ", &
				"echo                          ", "people's dreams in order to   ", "blanket                       " /)
	! Initialize group452
  group452 = (/ "cerberus                      ", "lift                          ", "writer wrote many unpublished ", &
				"hanger                        ", "poles, and the first human    ", "analysis                      " /)
	! Initialize group453
  group453 = (/ "and this particular animal    ", "registered nurse              ", "insist                        ", &
				"electromagnetic mill          ", "better there                  ", "bloodroot                     " /)
	! Initialize group454
  group454 = (/ "chimera                       ", "removed quickly with this     ", "mathematizes                  ", &
				"people in this neighborhood   ", "answer                        ", "pine, white japanese dwarf    " /)
	! Initialize group455
  group455 = (/ "select                        ", "combinatorics                 ", "appears to be an abandoned    ", &
				"Tefnut: raindrops-rare/desert ", "dangerously addictive         ", "displacer beast               " /)
	! Initialize group456
  group456 = (/ "topology                      ", "clean                         ", "angel                         ", &
				"save the honeybees            ", "body                          ", "that make it easier than ever " /)
	! Initialize group457
  group457 = (/ "more of what makes them       ", "scarecrow                     ", "fairy godmother isn't the good", &
				"glow stick                    ", "occupy                        ", "electrical activity in the    " /)
	! Initialize group458
  group458 = (/ "celery                        ", "in this environment,no one can", "treat                         ", &
				"socially acceptable to take   ", "geraniums                     ", "animated objects              " /)
	! Initialize group459
  group459 = (/ "dryad                         ", "entail                        ", "law-abiding                   ", &
				"created when she was still a  ", "vase                          ", "an assumed name               " /)
	! Initialize group460
  group460 = (/ "Mahatma Gandhi                ", "suffering have been eliminated", "cite                          ", &
				"logic                         ", "murder he describes takes     ", "cockatrice                    " /)
	! Initialize group461
  group461 = (/ "another consciousness uses    ", "wander                        ", "Ptah:clang/blacksmith's hammer", &
				"mathematizing                 ", "one of them moves             ", "Sherlock Holmes               " /)
	! Initialize group462
  group462 = (/ "eat                           ", "realizes he is actually eating", "behir                         ", &
				", although she lives alone    ", "artichoke                     ", "sailmaker                     " /)
	! Initialize group463
  group463 = (/ "set theory                    ", "bogeyman                      ", "patients are woken up from    ", &
				"trial                         ", "personality types described   ", "realize                       " /)
	! Initialize group464
  group464 = (/ "newspaper                     ", "their experimentation is      ", "phone                         ", &
				"their mood                    ", "house, but there doesn't seem ", "bugbears                      " /)
	! Initialize group465
  group465 = (/ "medusa                        ", "transfer                      ", "something disturbing          ", &
				"heirs                         ", "black hole                    ", "notices that for decades, the " /)
	! Initialize group466
  group466 = (/ "anthropologist                ", "kind of fairy                 ", "inspire                       ", &
				"land has been cursed to       ", "a wight, from old english:wiht", "towel                         " /)
	! Initialize group467
  group467 = (/ "this is no ordinary medical   ", "Alexander the great           ", "mathematization               ", &
				"Isis:chant/priestesses-invoke ", "a spouse or sibling dies      ", "confront                      " /)
	! Initialize group468
  group468 = (/ "look                          ", "sister                        ", "the contents freak her out    ", &
				"gibbering mouther             ", "algorithm                     ", "king ran away/living under    " /)
	! Initialize group469
  group469 = (/ "mathletes                     ", "into the hands of an evil     ", "crush                         ", &
				"manuscript by an obscure      ", "physician                     ", "gorgon                        " /)
	! Initialize group470
  group470 = (/ "bandsaw                       ", "Ra:flash/sunlight-pyramid door", "suspect                       ", &
				"thrilled to encounter this    ", "carrion crawler               ", "to navigate on long migrations" /)
	! Initialize group471
  group471 = (/ "merrow                        ", "theorem                       ", "they've done, things then     ", &
				"cater                         ", "in this world, China and the  ", "John F. Kennedy               " /)
	! Initialize group472
  group472 = (/ "Lamont Cranston               ", "he locked the doors and       ", "proof                         ", &
				"with one another in a language", "end                           ", "and with every last breath the" /)
	! Initialize group473
  group473 = (/ "the home security camera      ", "justify                       ", "remorhazes                    ", &
				"cannibalism happened          ", "a coil spring                 ", "computer hardware engineer    " /)
	! Initialize group474
  group474 = (/ "Horus: screech/falcon|the nile", "suspicious cases of enthanasia", "function                      ", &
				"order                         ", "pitiful excuse for a castle   ", "Hatshepsut                    " /)
	! Initialize group475
  group475 = (/ "compile                       ", "variable                      ", "personal information,         ", &
				"shadow                        ", "cloaker                       ", "sold by major corporations    " /)
	! Initialize group476
  group476 = (/ "With Ben Harpers own two hands", "grell                         ", "dare                          ", &
				"people's brains               ", "auto repair garage            ", "determine others' fates       " /)
	! Initialize group477
  group477 = (/ "create                        ", "superpowered senses-          ", "lake house                    ", &
				"Julius Caesar                 ", "humankind finds a way to move ", "constant                      " /)
	! Initialize group478
  group478 = (/ "coefficient                   ", "flash                         ", "mermaids, just to liven up    ", &
				"decorate                      ", "Ma'at:blend/voices-sacred rite", "right before his wedding, a   " /)
	! Initialize group479
  group479 = (/ "key chain                     ", "outline                       ", "campground                    ", &
				"size to perform  planet-saving", "her resume includes adapting  ", "ettin                         " /)
	! Initialize group480
  group480 = (/ "xorn                          ", "visited earth in quite a while", "admire                        ", &
				"obstacle course               ", "knot                          ", "welcome him into the family   " /)
	! Initialize group481
  group481 = (/ "the gate guardian             ", "parade ground                 ", "in this city, always after    ", &
				"surprise                      ", "for this race of beings,      ", "integral                      " /)
	! Initialize group482
  group482 = (/ "bureaucratic government office", "fall                          ", "derivative                    ", &
				"Anubis:toll/funeral bell-souls", "demilich                      ", "someone in the company keeps  " /)
	! Initialize group483
  group483 = (/ "talk                          ", "of the world depends          ", "discarded placentas           ", &
				"yugoloth                      ", "sketch                        ", "euthanasia is legal and       " /)
	! Initialize group484
  group484 = (/ "limit                         ", "the Dead really Can Dance     ", "the newly engineered crop     ", &
				"begin                         ", "a politician,religious leader,", "drider                        " /)
	! Initialize group485
  group485 = (/ "note                          ", "before to get them to buy     ", "trust                         ", &
				"man's parents made an unwise  ", "nightmare                     ", "emergency room                " /)
	! Initialize group486
  group486 = (/ "attempt to impersonate a      ", "crimes                        ", "genetically engineered marvels", &
				"dig                           ", "series                        ", "Amun:whisper/hidden god,unseen" /)
	! Initialize group487
  group487 = (/ "jackalwere                    ", "threat of global warming      ", "deem                          ", &
				"cleopatra                     ", "one from nothing              ", "academy                       " /)
	! Initialize group488
  group488 = (/ "Scarlet Witch                 ", "hunt                          ", "by orchestrating a series of  ", &
				"aircraft carrier              ", "body, making them effectively ", "bread                         " /)
	! Initialize group489
  group489 = (/ "media, books, public signs,   ", "Osiris: beat-ritual of rebirth", "add                           ", &
				"In a world where pain and     ", "clamp                         ", "Boudica                       " /)
	! Initialize group490
  group490 = (/ "vote                          ", "sequence                      ", "despondent they sometimes die ", &
				"stone golem                   ", "under safe and controlled     ", "dancer                        " /)
	! Initialize group491
  group491 = (/ "cloud giant                   ", "wants everyone to watch one   ", "lie                           ", &
				"who get them                  ", "Hermann Goring                ", "bookmark                      " /)
	! Initialize group492
  group492 = (/ "and discovers something       ", "claim                         ", "keyboard                      ", &
				"Sobek: churn/Nile as crocodile", "nightfall, ordinary people    ", "ice devil                     " /)
	! Initialize group493
  group493 = (/ "charger                       ", "tarrasque                     ", "the amusement park's been     ", &
				"discover                      ", "at first, everyone in the     ", "telemarketer                  " /)
	! Initialize group494
  group494 = (/ "matrix                        ", "at a remote filming location, ", "recognise                     ", &
				"ultroloth                     ", "a thief cracks the safe open  ", "paralegal                     " /)
	! Initialize group495
  group495 = (/ "crawling across the floor     ", "list                          ", "police officer                ", &
				"electricity                   ", "awakened shrub                ", "the painting looked different " /)
	! Initialize group496
  group496 = (/ "Thoth:scratch/reed pen-papyrus", "ghost at the movie theater    ", "strip                         ", &
				"pencil                        ", "person learns that in fact,   ", "vector                        " /)
	! Initialize group497
  group497 = (/ "scalar                        ", "proceed                       ", "scientific basis for the      ", &
				"the doll's eyes aren't        ", "faerie dragon                 ", "striking clock                " /)
	! Initialize group498
  group498 = (/ "videogame,things have been off", "invisible stalker             ", "tensor                        ", &
				"in her hotel room             ", "couple                        ", "art consultant                " /)
	! Initialize group499
  group499 = (/ "park                          ", "Hathor: jingle/footfalls/dance", "grisly events happen after the", &
				"compliance officer            ", "through the walls             ", "angle                         " /)
	! Initialize group500
  group500 = (/ "kick at the darkness untill   ", "beg                           ", "added to the public water     ", &
				"the person she's exchanging   ", "economist                     ", "drow mage                     " /)
	! Initialize group501
  group501 = (/ "sea chart                     ", "the last time she viewed it   ", "human biological processes,   ", &
				"perimeter                     ", "wagon                         ", "Nephthys: rustling/wings-dark " /)
	! Initialize group502
  group502 = (/ "wyvern                        ", "try                           ", "rewrite traumatic memories    ", &
				"shawl                         ", "individual develops a terror  ", "area                          " /)
	! Initialize group503
  group503 = (/ "Mau: The meow of a cat        ", "childcare worker              ", "dance                         ", &
				"his loved one died, but is    ", "sandal                        ", "entered, but now there is no  " /)
	! Initialize group504
  group504 = (/ "whipping boy                  ", "Taf: The sound of a drumbeat  ", "human subjects getting        ", &
				"exhaust                       ", "it doesn't have any eyes      ", "salamander                    " /)
	! Initialize group505
  group505 = (/ "royal doctor                  ", "Nef: flutter of a bird's wings", "book of spells                ", &
				"trash that humans have put    ", "transmit                      ", "the plants in the greenhouse  " /)
	! Initialize group506
  group506 = (/ "Hut: stone block set in place ", "notice                        ", "the world                     ", &
				"incense                       ", "mansion,and it turns out to be", "logistician                   " /)
	! Initialize group507
  group507 = (/ "her handsome new boyfriend,who", "overlook                      ", "Ankh: a deep breath, life     ", &
				"mage                          ", "to not only train but actually", "donuts                        " /)
	! Initialize group508
  group508 = (/ "lack                          ", "grick alpha                   ", "cow                           ", &
				"Geb: grunt of a laborer, work ", "Pi                            ", "them change color along with  " /)
	! Initialize group509
  group509 = (/ "kiwi                          ", "Klik: clack of stones in games", "hypotenuse                    ", &
				"cashier                       ", "decide                        ", "different channel             " /)
	! Initialize group510
  group510 = (/ "same nightmares               ", "the celebrated movie director ", "voice                         ", &
				"iron golem                    ", "fathom                        ", "Sif: sand dunes shifting, wind" /)
	! Initialize group511
  group511 = (/ "court reporter                ", "dislike                       ", "person learns for the first   ", &
				"stories...                    ", "response to traveling at      ", "the asteroids are small, but  " /)
	! Initialize group512
  group512 = (/ "her clone thinks she's the    ", "sadness and rage can be       ", "release                       ", &
				"earth has one big democratic  ", "traveling kid                 ", "flying vicious mosquitoes     " /)
	! Initialize group513
  group513 = (/ "gnome                         ", "two spirits fight for the     ", "they're a classic posse in the", &
				"to a new use                  ", "appoint                       ", "in order to counteract the    " /)
	! Initialize group514
  group514 = (/ "variety of negative sensations", "supposed to open when the doll", "vertigo                       ", &
				"photographer                  ", "the world                     ", "she finds a painting in a     " /)
	! Initialize group515
  group515 = (/ "he's one of many voluntary    ", "construction manager          ", "forge an ancient prophecy that", &
				"they've all signed a          ", "baby basket                   ", "the population calm and       " /)
	! Initialize group516
  group516 = (/ "public relations specialist   ", "artifice                      ", "in the future fails in their  ", &
				"pixie                         ", "movie scripts, albeit with a  ", "same man, dressed in the same " /)
	! Initialize group517
  group517 = (/ "it's now possible to remove or", "possession of a child         ", "toad                          ", &
				"every day contains codes that ", "shadow monster                ", "discovery                     " /)
	! Initialize group518
  group518 = (/ "an agreement                  ", "s\he begins to take over the  ", "the entries in this old diary ", &
				"rainbow                       ", "makeup                        ", "the monkeys are screeching at " /)
	! Initialize group519
  group519 = (/ "significance                  ", "to permanent lightning strikes", "the communter spaceship       ", &
				"catching insects or net       ", "crime he didn't commit        ", "pyramid                       " /)
	! Initialize group520
  group520 = (/ "encounters a malevolent ghost,", "reading somthing              ", "to believe                    ", &
				"radio                         ", "with the alien invaders       ", "begin committing shocking     " /)
	! Initialize group521
  group521 = (/ "kicking a ball                ", "a graffiti image appearing in ", "in startling detail           ", &
				"the population of another one ", "walking together              ", "magical powers don't work when" /)
	! Initialize group522
  group522 = (/ "in one reality, he's instantly", "lifting a heavy weight        ", "about to use it for anything  ", &
				"abacus                        ", "the spirit of a brutalized    ", "transplants                   " /)
	! Initialize group523
  group523 = (/ "nobody knows that at this site", "crescent moon                 ", "special effects               ", &
				"bringing better mental health ", "brain, are harnessed as an    ", "different person              " /)
	! Initialize group524
  group524 = (/ "lightning bolt                ", "theater thought it was part   ", "saw the volcano erupt, and    ", &
				"brothers who communicate only ", "sheep                         ", "AI, it uses many faces, many  " /)
	! Initialize group525
  group525 = (/ "want to bring to justice is a ", "Pluck: plucking of lyre string", "bee                           ", &
				"take evertone with him... and ", "supernatural being            ", "grows best in environments    " /)
	! Initialize group526
  group526 = (/ "for resilience to sleep       ", "she keeps seeing a woman      ", "camp fire                     ", &
				"around town who looks exactly ", "retrocausality - the way that ", "magnetite                     " /)
	! Initialize group527
  group527 = (/ "scales                        ", "helping people pass a series  ", "Set: crackle, lightning storm ", &
				"an alien doesn't know how to  ", "for instance,some other person", "messages or clues about her   " /)
	! Initialize group528
  group528 = (/ "than the olympics ever were,  ", "walking cane                  ", "of tests to earn their        ", &
				"ray gun                       ", "the ghost of her husband's    ", "sacred texts inspire a        " /)
	! Initialize group529
  group529 = (/ "and puppies also keep the     ", "no one is on board the ship   ", "snake                         ", &
				"but in another reality, he    ", "Eurp: sound of a burp         ", "government, but aliens have   " /)
	! Initialize group530
  group530 = (/ "threaten                      ", "to have no ability to improve ", "unfinished business           ", &
				"king's crown                  ", "running backwards             ", "abandoned it on the same night" /)
    ! Initialize group531, I like this fuction......
  group531 = (/ "look like faces               ", "brother                       ", "humans have discovered a way  ", &
				"such as tigers with           ", "so lifelike, amusing, and     ", "Bastet:purr and hiss of a cat," /)
    ! Initialize group532
  group532 = (/ "strangers snatch him from his ", "husband's first wife...       ", "arson                         ", &
				"when he woke up, he found a   ", "meeting                       ", "this so-called magical sword  " /)
    ! Initialize group533
  group533 = (/ "contribute                    ", "become one big communist state", "revenge on his tormentor's    ", &
				"fancy decanter                ", "taking care of their          ", "has surprising consequences   " /)
    ! Initialize group534
  group534 = (/ "once-extinct species is       ", "literal                       ", "alive in a parallel universe, ", &
				"AI is now capable of writing  ", "wizard                        ", "to have real ones             " /)
    ! Initialize group535
  group535 = (/ "by himself and is never seen  ", "particular snippet of film    ", "sword                         ", &
				"all of the people she thought ", "Nut:gentle sigh/sky-day-night ", "discovers she's not her new   " /)
    ! Initialize group536
  group536 = (/ "settle                        ", "the guests face               ", "a videogame, causing events to", &
				"the alien feels terrible about", "hearing from someone who looks", "deities of classic mythology  " /)
  ! ! Initialize group537
  group537 = (/ "Luff: flap of sail in the wind", "campfire was more than a story", "exercise                      ", &
				"doing the best they can do to ", "it was a total accident and   ", "the ,bloody mary, legend      " /)
  ! ! Initialize group538
  group538 = (/ "collective memory of an entire", "stimulate                     ", "much bigger business in secret", &
				"some people in town start     ", "person's consciousness can be ", "gears                         " /)
  ! ! Initialize group539
  group539 = (/ "past ones                     ", "Khonsu:tone/moonlight,overland", "there's a fueling station for ", &
				"city planning by creating a   ", "there's nothing there...      ", "over time, through analysis of" /)
  ! ! Initialize group540
  group540 = (/ "withdraw                      ", "virus can be transmitted from ", "what is the dog barking at?   ", &
				"they accidentally make him/her", "storm                         ", "transmit everything to the    " /)
  ! ! Initialize group541
  group541 = (/ "further into outer space      ", "vandalism                     ", "cilantro have a latent        ", &
				"forests of mature trees to    ", "cryptophasin behave in        ", "grandmaster thief             " /)
  ! ! Initialize group542
  group542 = (/ "medical history, and genetic  ", "this is the real story behind ", "throne                        ", &
				"thin you can't even feel it   ", "ruins                         ", "tell if she's really dead     " /)
  ! ! Initialize group543
  group543 = (/ "biologist discovers some      ", "magic spell                   ", "man's future in-laws try to   ", &
				"low-level employee in a       ", "interact almost entirely in   ", "return                        " /)
  ! ! Initialize group544
  group544 = (/ "river                         ", "to be describing a completely ", "like a doll she owned as,child", &
				"fixing                        ", "have changed... or is he      ", "with no known friends or      " /)
  ! ! Initialize group545
  group545 = (/ "books and videogames have both", "descendants                   ", "of the act                    ", &
				"Wadjet:sharp gaze-cobra, warn ", "vending machine dispenses     ", "prone to depression           " /)
  ! ! Initialize group546
  group546 = (/ "husband or wife               ", "travel and trade              ", "if they kill hitler,          ", &
				"in the 1950's                 ", "may or may not be a           ", "scientists put these proteins " /)
  ! ! Initialize group547
  group547 = (/ "goods and services            ", "pandemic, but not at the same ", "this object should've never   ", &
				"keep                          ", "dead loved one                ", "income                        " /)
  ! ! Initialize group548
  group548 = (/ "abandoned for thirty years    ", "why                           ", "exposed to high levels of     ", &
				"rice bowl                     ", "it was stored in the freezer  ", "humans with bionic upgrades   " /)
  ! ! Initialize group549
  group549 = (/ "beaker                        ", "terrible idea                 ", "deal in order to bring him    ", &
				"time travelers frequently wind", "data they collected about     ", "generation to generation, and " /)
  ! ! Initialize group550
  group550 = (/ "garage doors                  ", "passed down genetically from  ", "rich                          ", &
				"be a portrait of her          ", "exhilarating and terrifying   ", "the moon                      " /)
  ! ! Initialize group551
  group551 = (/ "a person can wonder unaware   ", ",you know!                    ", "formula                       ", &
				"crash to the earth            ", "person can partially manifest ", "sideshow is fake,             " /)
  ! ! Initialize group552
  group552 = (/ "Serqet:clink/scales-scorpion  ", "courage                       ", "catacombs for years           ", &
				"inhabitant                    ", "the man was executed for a    ", "a group of teenager trolls    " /)
  ! ! Initialize group553
  group553 = (/ "money                         ", "sometimes change              ", "medical researchers are       ", &
				"the atmosphere                ", "show for a funeral, someone   ", "now the planet is going       " /)
  ! ! Initialize group554
  group554 = (/ "mine so long ago?There's still", "It Blead's Daylight           ", "miss                          ", &
				"an evil spirit causes several ", "sack                          ", "popular with humans           " /)
  ! ! Initialize group555
  group555 = (/ "psychopath                    ", "waves                         ", "retina that record and        ", &
				"why did miners abandon the    ", "he's an empathy instructor,   ", "for, shadow world government  " /)
  ! ! Initialize group556
  group556 = (/ "appearance and communication  ", "spaceships                    ", "after a virus wipes out about ", &
				"and he is somehow getting     ", "wants to look - a mirror again", "beans                         " /)
  ! ! Initialize group557
  group557 = (/ "loudly arguing                ", "there are ways to fix it      ", "old bridge                    ", &
				"that no one taught him        ", "Mnevis:bellow of bull,echoing ", "centuries-old beauty secret is" /)
  ! ! Initialize group558
  group558 = (/ "cream truck for a nefarious   ", "always a bridesmaid,even after", "package from another country  ", &
				"dedicate                      ", "witch                         ", "gold in it                    " /)
  ! ! Initialize group559
  group559 = (/ "twisting road                 ", "the tricky part is,           ", "leads to an unfortunate       ", &
				"they can't get any decent     ", "if he says yes to the space   ", "grip                          " /)
  ! ! Initialize group560
  group560 = (/ "simple treatment              ", "a couple vacationing in a     ", "erased                        ", &
				"the toddler is using words    ", "large garden                  ", "victorian mourning jewelry    " /)
  ! ! Initialize group561
  group561 = (/ "they search for, way to really", "she can't remember anything   ", "mace                          ", &
				"counteract the effects of     ", "permit                        ", "fraternity hazing             " /)
  ! ! Initialize group562
  group562 = (/ "reasonably coherent books and ", "late wife is insanely jealous ", "a fool                        ", &
				"choose                        ", "has been hijacked             ", "Heqet:croak/frogs-Nile,fertile" /)
  ! ! Initialize group563
  group563 = (/ "secret                        ", "an evil demon causes several  ", "tour                          ", &
				"random details and lines of   ", "another station of its own    ", "long ago when he was a baby, a" /)
  ! ! Initialize group564
  group564 = (/ "office building alone         ", "prince                        ", "secret services               ", &
				"his computer is filled with   ", "even the sound of an ant      ", "long-lost soulmate, but other " /)
  ! ! Initialize group565
  group565 = (/ "getting media without this    ", "new life form                 ", "a trap                        ", &
				"no one else remembers her     ", "or two small facts of his life", "therapy and become actual     " /)
  ! ! Initialize group566
  group566 = (/ "humans consume now            ", "labors to make medical        ", "the feeling of being watched  ", &
				"swamp                         ", "every day, he notices that one", "war,and humans conquer planets" /)
  ! ! Initialize group567
  group567 = (/ "crown vase                    ", "creature they'd assumed to be ", "Aten:hum/sun disk,light & life", &
				"DNA                           ", "city-building videogame       ", "something terrible...         " /)
  ! ! Initialize group568
  group568 = (/ "the plastic surgeon is        ", "wolf                          ", "tattoo happens to be a symbol ", &
				"results                       ", "wedding at a beautiful        ", "serial murders in cities in   " /)
  ! ! Initialize group569
  group569 = (/ "with unusual specimens        ", "scientific discovery          ", "visited last night. He didn't ", &
				"planning                      ", "Bennu:whoosh/wing reborn-flame", "thief who stole something that" /)
  ! ! Initialize group570
  group570 = (/ "susceptible to glitches and   ", "old tree                      ", "lives alone in a rural area,  ", &
				"shocking or mysterious        ", "foundation; the branches break", "person gets an abstract tattoo" /)
  ! ! Initialize group571
  group571 = (/ "and an x-ray reveals something", "descend                       ", "death                         ", &
				"notes and gifts from her      ", "been isolated for decades and ", "contact lens solution         " /)
  ! ! Initialize group572
  group572 = (/ "digging                       ", "world hires young women to    ", "to many                       ", &
				"industry has gone missing     ", "little too convenient         ", "the body goes missing from its"/)
	! ... (Initialize all groups similarly) runes

do i = 1, roll_count
    ! Randomly select a group
    call random_number(rand)
    selected_group = int(rand * 573)	! Note to Ian, change this last...

    ! Randomly select an element from the chosen group commands
    call random_number(rand)
    selected_element = int(rand * 6)

    ! Assign groups to the groups array
    groups(0,:) = group0; groups(1,:) = group1; groups(2,:) = group2; groups(3,:) = group3; groups(4,:) = group4
    groups(5,:) = group5; groups(6,:) = group6; groups(7,:) = group7; groups(8,:) = group8; groups(9,:) = group9
	groups(10,:) = group10; groups(11,:) = group11; groups(12,:) = group12; groups(13,:) = group13; groups(14,:) = group14
    groups(15,:) = group15; groups(16,:) = group16; groups(17,:) = group17; groups(18,:) = group18; groups(19,:) = group19
	groups(20,:) = group20; groups(21,:) = group21; groups(22,:) = group22; groups(23,:) = group23; groups(24,:) = group24
    groups(25,:) = group25; groups(26,:) = group26; groups(27,:) = group27; groups(28,:) = group28; groups(29,:) = group29
	groups(30,:) = group30; groups(31,:) = group31; groups(32,:) = group32; groups(33,:) = group33; groups(34,:) = group34
    groups(35,:) = group35; groups(36,:) = group36; groups(37,:) = group37; groups(38,:) = group38; groups(39,:) = group39
	groups(40,:) = group40; groups(41,:) = group41; groups(42,:) = group42; groups(43,:) = group43; groups(44,:) = group44
    groups(45,:) = group45; groups(46,:) = group46; groups(47,:) = group47; groups(48,:) = group48; groups(49,:) = group49
	groups(50,:) = group50; groups(51,:) = group51; groups(52,:) = group52; groups(53,:) = group53; groups(54,:) = group54
    groups(55,:) = group55; groups(56,:) = group56; groups(57,:) = group57; groups(58,:) = group58; groups(59,:) = group59
	groups(60,:) = group60; groups(61,:) = group61; groups(62,:) = group62; groups(63,:) = group63; groups(64,:) = group64
    groups(65,:) = group65; groups(66,:) = group66; groups(67,:) = group67; groups(68,:) = group68; groups(69,:) = group69
	groups(70,:) = group70; groups(71,:) = group71; groups(72,:) = group72; groups(73,:) = group73; groups(74,:) = group74
    groups(75,:) = group75; groups(76,:) = group76; groups(77,:) = group77; groups(78,:) = group78; groups(79,:) = group79
	groups(80,:) = group80; groups(81,:) = group81; groups(82,:) = group82; groups(83,:) = group83; groups(84,:) = group84
    groups(85,:) = group85; groups(86,:) = group86; groups(87,:) = group87; groups(88,:) = group88; groups(89,:) = group89
	groups(90,:) = group90; groups(91,:) = group91; groups(92,:) = group92; groups(93,:) = group93; groups(94,:) = group94
    groups(95,:) = group95; groups(96,:) = group96; groups(97,:) = group97; groups(98,:) = group98; groups(99,:) = group99
    groups(100, :) = group100; groups(101, :) = group101; groups(102, :) = group102; groups(103, :) = group103; groups(104, :) = group104
    groups(105, :) = group105; groups(106, :) = group106; groups(107, :) = group107; groups(108, :) = group108; groups(109, :) = group109
    groups(110, :) = group110; groups(111, :) = group111; groups(112, :) = group112; groups(113, :) = group113; groups(114, :) = group114
    groups(115, :) = group115; groups(116, :) = group116; groups(117, :) = group117; groups(118, :) = group118; groups(119, :) = group119
    groups(120, :) = group120; groups(121, :) = group121; groups(122, :) = group122; groups(123, :) = group123; groups(124, :) = group124
    groups(125, :) = group125; groups(126, :) = group126; groups(127, :) = group127; groups(128, :) = group128; groups(129, :) = group129
    groups(130, :) = group130; groups(131, :) = group131; groups(132, :) = group132; groups(133, :) = group133; groups(134, :) = group134
    groups(135, :) = group135; groups(136, :) = group136; groups(137, :) = group137; groups(138, :) = group138; groups(139, :) = group139
    groups(140, :) = group140; groups(141, :) = group141; groups(142, :) = group142; groups(143, :) = group143; groups(144, :) = group144
	groups(145, :) = group145; groups(146, :) = group146; groups(147, :) = group147; groups(148, :) = group148; groups(149, :) = group149
	groups(150, :) = group150; groups(151, :) = group151; groups(152, :) = group152; groups(153, :) = group153; groups(154, :) = group154
	groups(155, :) = group155; groups(156, :) = group156; groups(157, :) = group157; groups(158, :) = group158; groups(159, :) = group159
	groups(160, :) = group160; groups(161, :) = group161; groups(162, :) = group162; groups(163, :) = group163; groups(164, :) = group164
	groups(165, :) = group165; groups(166, :) = group166; groups(167, :) = group167; groups(168, :) = group168; groups(169, :) = group169
	groups(170, :) = group170; groups(171, :) = group171; groups(172, :) = group172; groups(173, :) = group173; groups(174, :) = group174
	groups(175, :) = group175; groups(176, :) = group176; groups(177, :) = group177; groups(178, :) = group178; groups(179, :) = group179
	groups(180, :) = group180; groups(181, :) = group181; groups(182, :) = group182; groups(183, :) = group183; groups(184, :) = group184
	groups(185, :) = group185; groups(186, :) = group186; groups(187, :) = group187; groups(188, :) = group188; groups(189, :) = group189
	groups(190, :) = group190; groups(191, :) = group191; groups(192, :) = group192; groups(193, :) = group193; groups(194, :) = group194
	groups(195, :) = group195; groups(196, :) = group196; groups(197, :) = group197; groups(198, :) = group198; groups(199, :) = group199
	groups(200, :) = group200; groups(201, :) = group201; groups(202, :) = group202; groups(203, :) = group203; groups(204, :) = group204
	groups(205, :) = group205; groups(206, :) = group206; groups(207, :) = group207; groups(208, :) = group208; groups(209, :) = group209
	groups(210, :) = group210; groups(211, :) = group211; groups(212, :) = group212; groups(213, :) = group213; groups(214, :) = group214
	groups(215, :) = group215; groups(216, :) = group216; groups(217, :) = group217; groups(218, :) = group218; groups(219, :) = group219
	groups(220, :) = group220; groups(221, :) = group221; groups(222, :) = group222; groups(223, :) = group223; groups(224, :) = group224
	groups(225, :) = group225; groups(226, :) = group226; groups(227, :) = group227; groups(228, :) = group228; groups(229, :) = group229
	groups(230, :) = group230; groups(231, :) = group231; groups(232, :) = group232; groups(233, :) = group233; groups(234, :) = group234
	groups(235, :) = group235; groups(236, :) = group236; groups(237, :) = group237; groups(238, :) = group238; groups(239, :) = group239
	groups(240, :) = group240; groups(241, :) = group241; groups(242, :) = group242; groups(243, :) = group243; groups(244, :) = group244
	groups(245, :) = group245; groups(246, :) = group246; groups(247, :) = group247; groups(248, :) = group248; groups(249, :) = group249
	groups(250, :) = group250; groups(251, :) = group251; groups(252, :) = group252; groups(253, :) = group253; groups(254, :) = group254
	groups(255, :) = group255; groups(256, :) = group256; groups(257, :) = group257; groups(258, :) = group258; groups(259, :) = group259
	groups(260, :) = group260; groups(261, :) = group261; groups(262, :) = group262; groups(263, :) = group263; groups(264, :) = group264
	groups(265, :) = group265; groups(266, :) = group266; groups(267, :) = group267; groups(268, :) = group268; groups(269, :) = group269
	groups(270, :) = group270; groups(271, :) = group271; groups(272, :) = group272; groups(273, :) = group273; groups(274, :) = group274
	groups(275, :) = group275; groups(276, :) = group276; groups(277, :) = group277; groups(278, :) = group278; groups(279, :) = group279
	groups(280, :) = group280; groups(281, :) = group281; groups(282, :) = group282; groups(283, :) = group283; groups(284, :) = group284
	groups(285, :) = group285; groups(286, :) = group286; groups(287, :) = group287; groups(288, :) = group288; groups(289, :) = group289
	groups(290, :) = group290; groups(291, :) = group291; groups(292, :) = group292; groups(293, :) = group293; groups(294, :) = group294
	groups(295, :) = group295; groups(296, :) = group296; groups(297, :) = group297; groups(298, :) = group298; groups(299, :) = group299
	groups(300, :) = group300; groups(301, :) = group301; groups(302, :) = group302; groups(303, :) = group303; groups(304, :) = group304
	groups(305, :) = group305; groups(306, :) = group306; groups(307, :) = group307; groups(308, :) = group308; groups(309, :) = group309
	groups(310, :) = group310; groups(311, :) = group311; groups(312, :) = group312; groups(313, :) = group313; groups(314, :) = group314
	groups(315, :) = group315; groups(316, :) = group316; groups(317, :) = group317; groups(318, :) = group318; groups(319, :) = group319
	groups(320, :) = group320; groups(321, :) = group321; groups(322, :) = group322; groups(323, :) = group323; groups(324, :) = group324
	groups(325, :) = group325; groups(326, :) = group326; groups(327, :) = group327; groups(328, :) = group328; groups(329, :) = group329
	groups(330, :) = group330; groups(331, :) = group331; groups(332, :) = group332; groups(333, :) = group333; groups(334, :) = group334
	groups(335, :) = group335; groups(336, :) = group336; groups(337, :) = group337; groups(338, :) = group338; groups(339, :) = group339
	groups(340, :) = group340; groups(341, :) = group341; groups(342, :) = group342; groups(343, :) = group343; groups(344, :) = group344
	groups(345, :) = group345; groups(346, :) = group346; groups(347, :) = group347; groups(348, :) = group348; groups(349, :) = group349
	groups(350, :) = group350; groups(351, :) = group351; groups(352, :) = group352; groups(353, :) = group353; groups(354, :) = group354
	groups(355, :) = group355; groups(356, :) = group356; groups(357, :) = group357; groups(358, :) = group358; groups(359, :) = group359
	groups(360, :) = group360; groups(361, :) = group361; groups(362, :) = group362; groups(363, :) = group363; groups(364, :) = group364
	groups(365, :) = group365; groups(366, :) = group366; groups(367, :) = group367; groups(368, :) = group368; groups(369, :) = group369
	groups(370, :) = group370; groups(371, :) = group371; groups(372, :) = group372; groups(373, :) = group373; groups(374, :) = group374
	groups(375, :) = group375; groups(376, :) = group376; groups(377, :) = group377; groups(378, :) = group378; groups(379, :) = group379
	groups(380, :) = group380; groups(381, :) = group381; groups(382, :) = group382; groups(383, :) = group383; groups(384, :) = group384
	groups(385, :) = group385; groups(386, :) = group386; groups(387, :) = group387; groups(388, :) = group388; groups(389, :) = group389
	groups(390, :) = group390; groups(391, :) = group391; groups(392, :) = group392; groups(393, :) = group393; groups(394, :) = group394
	groups(395, :) = group395; groups(396, :) = group396; groups(397, :) = group397; groups(398, :) = group398; groups(399, :) = group399
	groups(400, :) = group400; groups(401, :) = group401; groups(402, :) = group402; groups(403, :) = group403; groups(404, :) = group404
	groups(405, :) = group405; groups(406, :) = group406; groups(407, :) = group407; groups(408, :) = group408; groups(409, :) = group409
	groups(410, :) = group410; groups(411, :) = group411; groups(412, :) = group412; groups(413, :) = group413; groups(414, :) = group414
	groups(415, :) = group415; groups(416, :) = group416; groups(417, :) = group417; groups(418, :) = group418; groups(419, :) = group419
	groups(420, :) = group420; groups(421, :) = group421; groups(422, :) = group422; groups(423, :) = group423; groups(424, :) = group424
	groups(425, :) = group425; groups(426, :) = group426; groups(427, :) = group427; groups(428, :) = group428; groups(429, :) = group429
	groups(430, :) = group430; groups(431, :) = group431; groups(432, :) = group432; groups(433, :) = group433; groups(434, :) = group434
	groups(435, :) = group435; groups(436, :) = group436; groups(437, :) = group437; groups(438, :) = group438; groups(439, :) = group439
	groups(440, :) = group440; groups(441, :) = group441; groups(442, :) = group442; groups(443, :) = group443; groups(444, :) = group444
	groups(445, :) = group445; groups(446, :) = group446; groups(447, :) = group447; groups(448, :) = group448; groups(449, :) = group449
	groups(450, :) = group450; groups(451, :) = group451; groups(452, :) = group452; groups(453, :) = group453; groups(454, :) = group454
	groups(455, :) = group455; groups(456, :) = group456; groups(457, :) = group457; groups(458, :) = group458; groups(459, :) = group459
	groups(460, :) = group460; groups(461, :) = group461; groups(462, :) = group462; groups(463, :) = group463; groups(464, :) = group464
	groups(465, :) = group465; groups(466, :) = group466; groups(467, :) = group467; groups(468, :) = group468; groups(469, :) = group469
	groups(470, :) = group470; groups(471, :) = group471; groups(472, :) = group472; groups(473, :) = group473; groups(474, :) = group474
	groups(475, :) = group475; groups(476, :) = group476; groups(477, :) = group477; groups(478, :) = group478; groups(479, :) = group479
	groups(480, :) = group480; groups(481, :) = group481; groups(482, :) = group482; groups(483, :) = group483; groups(484, :) = group484
	groups(485, :) = group485; groups(486, :) = group486; groups(487, :) = group487; groups(488, :) = group488; groups(489, :) = group489
	groups(490, :) = group490; groups(491, :) = group491; groups(492, :) = group492; groups(493, :) = group493; groups(494, :) = group494
	groups(495, :) = group495; groups(496, :) = group496; groups(497, :) = group497; groups(498, :) = group498; groups(499, :) = group499
	groups(500, :) = group500; groups(501, :) = group501; groups(502, :) = group502; groups(503, :) = group503; groups(504, :) = group504
	groups(505, :) = group505; groups(506, :) = group506; groups(507, :) = group507; groups(508, :) = group508; groups(509, :) = group509
	groups(510, :) = group510; groups(511, :) = group511; groups(512, :) = group512; groups(513, :) = group513; groups(514, :) = group514
	groups(515, :) = group515; groups(516, :) = group516; groups(517, :) = group517; groups(518, :) = group518; groups(519, :) = group519
	groups(520, :) = group520; groups(521, :) = group521; groups(522, :) = group522; groups(523, :) = group523; groups(524, :) = group524
	groups(525, :) = group525; groups(526, :) = group526; groups(527, :) = group527; groups(528, :) = group528; groups(529, :) = group529
	groups(530, :) = group530; groups(531, :) = group531; groups(532, :) = group532; groups(533, :) = group533; groups(534, :) = group534
	groups(535, :) = group535; groups(536, :) = group536; groups(537, :) = group537; groups(538, :) = group538; groups(539, :) = group539
	groups(540, :) = group540; groups(541, :) = group541; groups(542, :) = group542; groups(543, :) = group543; groups(544, :) = group544
	groups(545, :) = group545; groups(546, :) = group546; groups(547, :) = group547; groups(548, :) = group548; groups(549, :) = group549
	groups(550, :) = group550; groups(551, :) = group551; groups(552, :) = group552; groups(553, :) = group553; groups(554, :) = group554
	groups(555, :) = group555; groups(556, :) = group556; groups(557, :) = group557; groups(558, :) = group558; groups(559, :) = group559
	groups(560, :) = group560; groups(561, :) = group561; groups(562, :) = group562; groups(563, :) = group563; groups(564, :) = group564
	groups(565, :) = group565; groups(566, :) = group566; groups(567, :) = group567; groups(568, :) = group568; groups(569, :) = group569
	groups(570, :) = group570; groups(571, :) = group571; groups(572, :) = group572
	! ... (assign all other groups similarly)

    ! Display the selected element
print *
print *, trim(groups(selected_group, selected_element))
print *
end do

    !print *, "Thank you for using the Story Element Generator."
end program story_element_generator_EnJnDeSIgn2024