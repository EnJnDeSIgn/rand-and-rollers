"""
Logic Fallacy Debate Game - Uses Ma'at myth as thematic framework
Integrates with main.py's LLM and ethics data
"""
import os
import json
import random
import time
from langchain_ollama import OllamaLLM
from langchain_core.prompts import ChatPromptTemplate

# ==================== FALLACY DATABASE ====================
FALLACIES = {
    "Ad hominem": {
        "description": "An ad hominem fallacy attempts to invalidate an opponent's position based on a personal trait rather than logic.",
        "example": "Katherine is a bad choice for mayor because she didn't grow up in this town."
    },
    "Red herring": {
        "description": "A red herring shifts focus from the debate by introducing an irrelevant point.",
        "example": "Losing a tooth can be scary, but have you heard about the Tooth Fairy?"
    },
    "Straw man": {
        "description": "A straw man argues against a hyperbolic, inaccurate version of the opposition rather than their actual argument.",
        "example": "Erin thinks we need to stop using all plastics right now to save the planet."
    },
    "Equivocation": {
        "description": "An equivocation misleads by using multiple meanings of a word or unclear phrasing.",
        "example": "I have a clear plan for the budget, but my opponent wants to throw money at special interests."
    },
    "Slippery slope": {
        "description": "Claims a specific series of events will follow one starting point with no supporting evidence.",
        "example": "If we allow service dogs, soon everyone will bring their dogs and the restaurant will be overrun."
    },
    "Hasty generalization": {
        "description": "Makes a statement after considering just one or a few examples rather than extensive research.",
        "example": "I felt nauseated both times I ate pizza from Giorgio's, so I must be allergic to pizza."
    },
    "Appeal to authority": {
        "description": "Claims an authority figure's expertise supports a claim despite irrelevant or overstated expertise.",
        "example": "Stop drinking coffee to be healthy. I read it on a fitness blog."
    },
    "False dilemma": {
        "description": "Claims there are only two options, often extreme opposites, ignoring reasonable alternatives.",
        "example": "If you don't support my decision, you were never really my friend."
    },
    "Bandwagon fallacy": {
        "description": "Claims an action is right because it's popular.",
        "example": "Of course it's fine to wait until the last minute to write your paper. Everybody does it!"
    },
    "Appeal to ignorance": {
        "description": "Claims something must be true because it hasn't been proven false (or vice versa).",
        "example": "There must be fairies in our attic because nobody's ever proven there aren't."
    },
    "Circular argument": {
        "description": "Uses the same statement as both premise and conclusion with no new justification.",
        "example": "Peppers are the easiest vegetable to grow because I think peppers are easiest to grow."
    },
    "Sunk cost fallacy": {
        "description": "Justifies continuing a course of action by the time or money already spent on it.",
        "example": "I'm not enjoying this book, but I bought it, so I have to finish reading it."
    },
    "Appeal to pity": {
        "description": "Attempts to sway opinion by provoking emotional response rather than logic.",
        "example": "I know I should have been on time, but I woke up late and felt really bad about it."
    },
    "Causal fallacy": {
        "description": "Implies a relationship between two things where one can't actually be proven.",
        "example": "When ice cream sales are up, shark attacks increase. So buying ice cream causes shark attacks."
    },
    "Appeal to hypocrisy": {
        "description": "Responds to a claim with reactive criticism rather than addressing the claim itself.",
        "example": "You don't have enough experience to be leader. Neither do you!"
    }
}

# ==================== SETUP ====================
MODEL = OllamaLLM(model="gemma3:27b-it-qat", server_url="http://127.0.0.1:58305")

# Prompt for generating bad arguments
BAD_ARGUMENT_TEMPLATE = """
You are creating a deliberately flawed argument based on a logical fallacy.
Your job is to write a short, persuasive-sounding bad argument (2-3 sentences) 
that commits this fallacy. Make it sound plausible but logically wrong.

Fallacy: {fallacy_name}
Description: {fallacy_description}

Write ONLY the bad argument itself, nothing else. No explanation, no labels.
"""

# Prompt for grading responses
GRADING_TEMPLATE = """
A user is playing a Logic Fallacy game. They were presented with this bad argument:

Bad Argument: {bad_argument}

The fallacy is: {fallacy_name}

The user provided this counter-argument: {counter_argument}

Score their response from 1-100 based on:
1. Did they identify or reference the fallacy? (40 points max)
2. Quality of counter-argument and logic? (35 points max)
3. Truthfulness and balance of argument? (25 points max)

Respond with ONLY a number 1-100, nothing else.
"""

BAD_ARGUMENT_PROMPT = ChatPromptTemplate.from_template(BAD_ARGUMENT_TEMPLATE)
GRADING_PROMPT = ChatPromptTemplate.from_template(GRADING_TEMPLATE)

BAD_ARGUMENT_CHAIN = BAD_ARGUMENT_PROMPT | MODEL
GRADING_CHAIN = GRADING_PROMPT | MODEL

# ==================== LEADERBOARD MANAGEMENT ====================
SESSION_LEADERBOARD = "leaderboard.json"
ALLTIME_LEADERBOARD = "all_time_leaderboard.json"

def load_leaderboard(filename):
    """Load leaderboard from JSON file."""
    if os.path.exists(filename):
        with open(filename, "r", encoding="utf-8") as f:
            return json.load(f)
    return {}

def save_leaderboard(filename, leaderboard):
    """Save leaderboard to JSON file."""
    with open(filename, "w", encoding="utf-8") as f:
        json.dump(leaderboard, f, indent=4)

def update_leaderboard(player_name, score, fallacy_name):
    """Update both session and all-time leaderboards."""
    # Session leaderboard
    session_board = load_leaderboard(SESSION_LEADERBOARD)
    if player_name not in session_board:
        session_board[player_name] = []
    session_board[player_name].append({
        "score": score,
        "fallacy": fallacy_name,
        "timestamp": time.strftime("%Y-%m-%d %H:%M:%S")
    })
    save_leaderboard(SESSION_LEADERBOARD, session_board)
    
    # All-time leaderboard (keep best score)
    alltime_board = load_leaderboard(ALLTIME_LEADERBOARD)
    if player_name not in alltime_board:
        alltime_board[player_name] = 0
    alltime_board[player_name] = max(alltime_board[player_name], score)
    save_leaderboard(ALLTIME_LEADERBOARD, alltime_board)

def display_leaderboards():
    """Display current session and all-time high scores."""
    print("\n" + "="*60)
    print("📊 SESSION SCORES")
    print("="*60)
    session = load_leaderboard(SESSION_LEADERBOARD)
    if session:
        for player, scores in sorted(session.items()):
            # Handle both list of dicts and int formats
            if isinstance(scores, list) and len(scores) > 0:
                avg_score = sum(s["score"] for s in scores) / len(scores)
                print(f"  {player}: Avg {avg_score:.1f} ({len(scores)} rounds)")
            elif isinstance(scores, int):
                # Fallback for integer values (legacy format)
                print(f"  {player}: {scores}")
    else:
        print("  No session data yet")
    
    print("\n" + "="*60)
    print("🏆 ALL-TIME HIGH SCORES")
    print("="*60)
    alltime = load_leaderboard(ALLTIME_LEADERBOARD)
    if alltime:
        sorted_scores = sorted(alltime.items(), key=lambda x: x[1], reverse=True)
        for i, (player, score) in enumerate(sorted_scores, 1):
            print(f"  {i}. {player}: {score}")
    else:
        print("  No all-time data yet")
    print("="*60 + "\n")

# ==================== GAME FLOW ====================
def print_intro():
    """Print game introduction."""
    print("\n" + "🌩️  "*20)
    print("""
    ╔════════════════════════════════════════════════════════╗
    ║     THE WEIGHT OF A THOUSAND STORMS                    ║
    ║        A Logic Fallacy Debate Game                     ║
    ║                                                        ║
    ║  Just as Ma'at tested mortals through the Scales,     ║
    ║  you must weigh arguments for truth and balance.      ║
    ║                                                        ║
    ║  An AI will present a flawed argument. Your task:     ║
    ║  Identify the fallacy and craft a better counter.     ║
    ║                                                        ║
    ║  May truth prevail. ⚖️                                ║
    ╚════════════════════════════════════════════════════════╝
    """)
    print("🌩️  "*20 + "\n")

def get_player_name():
    """Get player name from user."""
    name = input("Enter your name (or press Enter for 'Player'): ").strip()
    return name if name else "Player"

def select_random_fallacy():
    """Select a random fallacy from the database."""
    fallacy_name = random.choice(list(FALLACIES.keys()))
    return fallacy_name, FALLACIES[fallacy_name]

def generate_bad_argument(fallacy_name, fallacy_data):
    """Generate a bad argument based on the fallacy."""
    try:
        response = BAD_ARGUMENT_CHAIN.invoke({
            "fallacy_name": fallacy_name,
            "fallacy_description": fallacy_data["description"]
        })
        return response.strip()
    except Exception as e:
        print(f"Error generating bad argument: {e}")
        return f"Here's a {fallacy_name} fallacy: {fallacy_data['example']}"

def grade_response(bad_argument, fallacy_name, counter_argument):
    """Grade the user's counter-argument."""
    try:
        response = GRADING_CHAIN.invoke({
            "bad_argument": bad_argument,
            "fallacy_name": fallacy_name,
            "counter_argument": counter_argument
        })
        # Extract number from response
        score_text = response.strip()
        # Find first number in response
        import re
        numbers = re.findall(r'\d+', score_text)
        if numbers:
            score = int(numbers[0])
            return max(1, min(100, score))  # Clamp between 1-100
        return 50  # Default if parsing fails
    except Exception as e:
        print(f"Error grading response: {e}")
        return 50

def play_round(player_name):
    """Play a single round of the game."""
    print("\n" + "="*60)
    print("⚖️  NEW ROUND ⚖️")
    print("="*60)
    
    # Select fallacy
    fallacy_name, fallacy_data = select_random_fallacy()
    print(f"\nFallacy: {fallacy_name}")
    print(f"Definition: {fallacy_data['description']}\n")
    
    # Generate bad argument
    print("🤖 Ibi presents a flawed argument...")
    bad_argument = generate_bad_argument(fallacy_name, fallacy_data)
    print(f"\nBad Argument: {bad_argument}\n")
    
    # Get user counter-argument
    counter_argument = input("Your Counter-Argument: ").strip()
    if not counter_argument:
        print("No input provided. Skipping this round.")
        return None
    
    # Grade response
    print("\n📊 Grading your response...")
    score = grade_response(bad_argument, fallacy_name, counter_argument)
    
    # Display feedback
    print(f"\n✨ Score: {score}/100")
    if score >= 80:
        print("Ma'at is pleased. Your logic is sound. ⚖️✨")
    elif score >= 60:
        print("Your argument has merit, but the scales are not yet balanced.")
    elif score >= 40:
        print("The fallacy still clouds your reasoning. Try again.")
    else:
        print("The scales tilt against you. Reconsider your logic.")
    
    # Update leaderboards
    update_leaderboard(player_name, score, fallacy_name)
    
    return score

def main():
    """Main game loop."""
    print_intro()
    player_name = get_player_name()
    print(f"\nWelcome, {player_name}! May the Scales of Ma'at guide you.\n")
    
    session_scores = []
    play_again = True
    
    while play_again:
        score = play_round(player_name)
        if score is not None:
            session_scores.append(score)
        
        response = input("\nPlay another round? (y/n): ").strip().lower()
        play_again = response == 'y'
    
    # Display final leaderboards
    print("\n" + "="*60)
    print("🌙 Thank you for playing 🌙")
    print("="*60)
    if session_scores:
        avg = sum(session_scores) / len(session_scores)
        print(f"\nYour Session Average: {avg:.1f}/100 ({len(session_scores)} rounds)")
    
    display_leaderboards()
    print("May truth always balance the scales. ⚖️✨\n")

if __name__ == "__main__":
    main()