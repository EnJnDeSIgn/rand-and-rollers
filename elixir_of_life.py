"""
ELIXIR OF LIFE - Therapeutic Trance Script Generator
Integrates alchemical framework (GRIMOIRE.txt) with Ericksonian hypnotherapy
and NLP patterns from Bandler, Grinder, Gordon, and Overdurf.

Creates personalized trance scripts to help overcome problems through:
- Metaphor and symbolic transformation
- Hypnotic language patterns
- Alchemical stages (Nigredo, Albedo, Citrinitas, Rubedo)
- Progressive script building and evolution

Author: EnJnDeSIgn
"""

import os
import json
import time
from datetime import datetime
from pathlib import Path
from langchain_ollama import OllamaLLM
from langchain_core.prompts import ChatPromptTemplate

# ==================== CONFIGURATION ====================
SCRIPTS_DIR = "trance_scripts"
SESSIONS_FILE = "sessions.json"
MODEL = OllamaLLM(model="gemma3:27b-it-qat", server_url="http://127.0.0.1:58305")

# Ensure scripts directory exists
Path(SCRIPTS_DIR).mkdir(exist_ok=True)

# ==================== ALCHEMICAL FRAMEWORK ====================
ALCHEMICAL_STAGES = {
    "nigredo": {
        "name": "Nigredo (Blackening)",
        "description": "Breaking down the old pattern. Confronting the problem directly.",
        "phase": "Excitation - Shake the structure. Destabilize the old form.",
        "spirit": "The Weight-Bearer (Lead)",
        "purpose": "Reveal what has not yet been faced"
    },
    "albedo": {
        "name": "Albedo (Whitening)",
        "description": "Purification and separation. Distinguishing truth from falsehood.",
        "phase": "Stripping - Remove one illusion. Clarity emerges.",
        "spirit": "The Separator & The Conductor (Tin & Copper)",
        "purpose": "Discernment and communication of what is needed"
    },
    "citrinitas": {
        "name": "Citrinitas (Yellowing)",
        "description": "Integration and synthesis. Bringing divided parts together.",
        "phase": "Reconfiguration - Rebuild around truth. New pattern forms.",
        "spirit": "The Synthesizer (Bronze)",
        "purpose": "Unite what is divided into functional wholeness"
    },
    "rubedo": {
        "name": "Rubedo (Reddening)",
        "description": "Completion and stabilization. The new self emerges coherent.",
        "phase": "Stabilization - System becomes coherent. The work is complete.",
        "spirit": "The Incorruptible (Gold)",
        "purpose": "Wholeness, sovereignty, and integration"
    }
}

# ==================== HYPNOTIC LANGUAGE PATTERNS ====================
# Based on Milton H. Erickson and Richard Bandler/John Grinder NLP patterns

LANGUAGE_PATTERNS = {
    "presupposition": [
        "As you {action}, you'll begin to notice {outcome}...",
        "By the time you {future_event}, you will have {resource}...",
        "As you continue to {process}, {change} will naturally occur...",
    ],
    "embedded_command": [
        "I'm not suggesting you {action}... but you might {subtle_action}...",
        "Some people decide to {action}, and that's their choice...",
        "It's interesting how {action} can lead to {result}...",
    ],
    "pacing_and_leading": [
        "You're sitting here, listening to my voice, and {current_reality}... and as you do, {new_possibility} becomes available...",
        "Just like {familiar_experience}, you can {new_resource}...",
        "The same way {analogy} works, your unconscious mind can {solution}...",
    ],
    "yes_set": [
        "Your name is {name}, isn't it? And you're here because {reason}, aren't you? And you'd like to {goal}, wouldn't you?",
        "You can sit comfortably, can you? And you can breathe, can you? And you can notice {resource}, can you?",
    ],
    "negative_to_positive": [
        "You don't need to {old_problem}... your unconscious mind can {new_solution}...",
        "Not that {resistance} matters anymore, because {new_reality}...",
        "There's no need to {limitation}... because {capability} is already within you...",
    ],
    "ambiguous_function": [
        "Whether you {option_a} or {option_b}, your unconscious can {outcome}...",
        "Whether you're aware of {resource} consciously or unconsciously, it's working for you...",
    ],
    "truism": [
        "People learn in many different ways...",
        "Change happens at its own pace...",
        "Your unconscious mind can do many things your conscious mind hasn't yet imagined...",
    ],
    "metaphor": [
        "You know how a caterpillar becomes a butterfly... well, your mind can transform in similar ways...",
        "Like a river finding its way around obstacles, your resources can flow to where they're needed...",
    ],
    "suggestion": [
        "And as you breathe, you might find {outcome} happening naturally...",
        "Somewhere deep in your unconscious, {change} is already beginning...",
        "I wonder if you've noticed yet how {resource} is becoming easier...",
    ]
}

# ==================== TRANCE INDUCTION PATTERNS ====================
INDUCTIONS = {
    "progressive_relaxation": """
Imagine starting at the top of your head... and with each breath, 
allowing that area to relax more and more... feel that relaxation 
spreading down through your forehead, your eyes, your jaw... 
and that relaxation can continue down through your neck, your shoulders, 
all the way down your spine... and with each breath, deeper and deeper...
""",
    
    "confusion_induction": """
I don't know whether your left hand or your right hand will lift first...
and I don't know if it will happen quickly or slowly...
and your conscious mind can wonder about that...
while your unconscious mind makes that decision for you...
and that's okay...
""",
    
    "metaphorical_induction": """
Imagine descending a staircase... each step takes you deeper...
the walls become softer, the light becomes warmer...
you can hear the sound of gentle water, see the colors shifting...
deeper and deeper with each step... and when you reach the bottom,
there is a place of perfect peace... your inner sanctuary...
""",
    
    "fixation_induction": """
And you can pick a spot on the wall... or close your eyes and 
imagine a spot... and let your gaze rest there... 
as your eyes begin to feel heavier... and heavier...
and that's perfectly natural... as your breathing slows...
and deepens... and you drift deeper... and deeper...
""",
    
    "utilization_induction": """
Whatever brought you here today... whatever pattern you want to transform...
your unconscious mind already knows what to do...
it's been working on this all along...
and today, we're just going to help it do what it already wants to do...
naturally and safely...
"""
}

# ==================== DEEPENING TECHNIQUES ====================
DEEPENINGS = {
    "escalator": """
Imagine an escalator going down... moving smoothly... and with each 
step down, you go deeper into relaxation and awareness... down, down, down...
deeper with each breath... and you can feel yourself moving at just the 
right pace for your unconscious mind...""",
    
    "counting": """
And I'm going to count from 10 down to 1... and with each number,
you'll go deeper... deeper... deeper into this state...
10... deeper... 9... more and more comfortable... 8...
your mind can let go even more... all the way down to 1...""",
    
    "hand_levitation": """
And you might become aware of your hands... and perhaps one of them,
or both, can become lighter and lighter... as if they're being lifted
by invisible strings... or helium balloons... and that lightness can spread
up your arm... and as it does, you go even deeper into trance...""",
    
    "fractionation": """
And in just a moment, I'm going to count to three... and when I do,
you'll take a deeper breath... and go even deeper... 1... 2... 3...
that's right... even deeper now... and this can happen again and again,
each time taking you further into your inner wisdom..."""
}

# ==================== SCRIPT SESSION MANAGEMENT ====================
def load_sessions():
    """Load all existing sessions."""
    if os.path.exists(SESSIONS_FILE):
        with open(SESSIONS_FILE, "r", encoding="utf-8") as f:
            return json.load(f)
    return {}

def save_sessions(sessions):
    """Save sessions to file."""
    with open(SESSIONS_FILE, "w", encoding="utf-8") as f:
        json.dump(sessions, f, indent=2, ensure_ascii=False)

def create_session(client_name, problem):
    """Create a new trance script session."""
    session_id = f"{client_name}_{datetime.now().strftime('%Y%m%d_%H%M%S')}"
    
    session = {
        "session_id": session_id,
        "client_name": client_name,
        "created_at": datetime.now().isoformat(),
        "last_updated": datetime.now().isoformat(),
        "problem_history": [
            {
                "timestamp": datetime.now().isoformat(),
                "description": problem,
                "stage": "initial"
            }
        ],
        "script_sections": {},
        "stage_completion": {stage: False for stage in ALCHEMICAL_STAGES.keys()},
        "notes": []
    }
    
    return session_id, session

def load_session(session_id):
    """Load a specific session."""
    sessions = load_sessions()
    if session_id in sessions:
        return sessions[session_id]
    return None

def save_session(session_id, session_data):
    """Save a specific session."""
    sessions = load_sessions()
    sessions[session_id] = session_data
    save_sessions(sessions)

def list_sessions(client_name=None):
    """List all available sessions, optionally filtered by client."""
    sessions = load_sessions()
    if client_name:
        return {sid: s for sid, s in sessions.items() if s["client_name"].lower() == client_name.lower()}
    return sessions

# ==================== TRANCE SCRIPT GENERATION ====================
SCRIPT_GENERATION_TEMPLATE = """
You are an expert Ericksonian hypnotherapist and NLP master practitioner.
You have studied Milton H. Erickson, Richard Bandler, John Grinder, David Gordon, 
and John Overdurf's work on therapeutic metaphor and trance induction.

Create a therapeutic trance script for the following:

CLIENT PROBLEM: {problem}
ALCHEMICAL STAGE: {stage_name}
STAGE_PURPOSE: {stage_purpose}
STAGE_PHASE: {stage_phase}

PREVIOUS_SCRIPT_CONTEXT: {previous_context}

INSTRUCTIONS:
1. Create a script that uses the specified alchemical stage as a metaphorical framework
2. Incorporate Ericksonian hypnotic language patterns (presupposition, embedded commands, pacing/leading)
3. Use the spirit of the metal as a guide or inner resource
4. Include therapeutic metaphors that transform the problem into an alchemical process
5. The script should be 300-500 words
6. Use natural trance language - avoid clinical terminology
7. Build on previous stages if this is not the first stage
8. Include at least one of these elements:
   - Analogies from nature or mythology
   - Implied causative links (as/then)
   - Utilization of the client's own resources
   - Ambiguous function statements
   - Negative to positive reframes

ALCHEMICAL_FRAMEWORK_REMINDER:
- Nigredo: Breaking down, facing what's heavy or hidden
- Albedo: Purification, clarity, distinguishing truth
- Citrinitas: Integration, bringing parts together
- Rubedo: Completion, stability, the gold state

Generate ONLY the trance script itself. Make it poetic, powerful, and transformative.
"""

SCRIPT_GENERATION_PROMPT = ChatPromptTemplate.from_template(SCRIPT_GENERATION_TEMPLATE)
SCRIPT_GENERATION_CHAIN = SCRIPT_GENERATION_PROMPT | MODEL

def generate_trance_script(problem, stage, previous_context=""):
    """Generate a therapeutic trance script for a specific problem and alchemical stage."""
    stage_data = ALCHEMICAL_STAGES[stage]
    
    try:
        response = SCRIPT_GENERATION_CHAIN.invoke({
            "problem": problem,
            "stage_name": stage_data["name"],
            "stage_purpose": stage_data["purpose"],
            "stage_phase": stage_data["phase"],
            "previous_context": previous_context if previous_context else "This is the first stage of the work."
        })
        return response.strip()
    except Exception as e:
        print(f"Error generating script: {e}")
        return f"[Error generating script for {stage_data['name']}]"

# ==================== CONTINUATION AND EVOLUTION ====================
EVOLUTION_TEMPLATE = """
You are continuing a therapeutic trance work that has already begun.

ORIGINAL_PROBLEM: {original_problem}
CLIENT_UPDATE: {client_update}
PREVIOUS_STAGES_COMPLETED: {completed_stages}
CURRENT_STAGE: {current_stage}
PREVIOUS_SCRIPT_CONTENT: {previous_script}

The client's situation has evolved. Acknowledge this evolution within the trance framework.
Create the next section that:
1. Honors the work already done
2. Acknowledges the new development or evolution of the problem
3. Deepens the alchemical transformation using the current stage
4. Uses metaphor to show how the original problem is transforming
5. Integrates the new insight with the old

Generate ONLY the continuation of the script (200-400 words).
Make it flow naturally from the previous work.
"""

EVOLUTION_PROMPT = ChatPromptTemplate.from_template(EVOLUTION_TEMPLATE)
EVOLUTION_CHAIN = EVOLUTION_PROMPT | MODEL

def evolve_script(session_data, client_update):
    """Generate the next section of the script based on client evolution."""
    problem = session_data["problem_history"][0]["description"]
    completed_stages = [s for s, completed in session_data["stage_completion"].items() if completed]
    
    # Find current stage (next incomplete stage)
    current_stage = None
    for stage in ALCHEMICAL_STAGES.keys():
        if not session_data["stage_completion"][stage]:
            current_stage = stage
            break
    
    if not current_stage:
        current_stage = "rubedo"
    
    # Get previous script context
    previous_script = "\n\n".join(
        f"[{stage.upper()}]\n{content}" 
        for stage, content in session_data["script_sections"].items()
    )
    
    try:
        response = EVOLUTION_CHAIN.invoke({
            "original_problem": problem,
            "client_update": client_update,
            "completed_stages": ", ".join(completed_stages) if completed_stages else "None yet",
            "current_stage": ALCHEMICAL_STAGES[current_stage]["name"],
            "previous_script": previous_script if previous_script else "Initial session"
        })
        return response.strip(), current_stage
    except Exception as e:
        print(f"Error evolving script: {e}")
        return f"[Error evolving script]", current_stage

# ==================== USER INTERFACE ====================
def print_header():
    """Print program header."""
    print("\n" + "🧪 "*20)
    print("""
    ╔════════════════════════════════════════════════════════════╗
    ║              ELIXIR OF LIFE                                ║
    ║     Therapeutic Trance Script Generator                    ║
    ║                                                            ║
    ║  Alchemical transformation through hypnotic language,     ║
    ║  Ericksonian patterns, and NLP metaphor.                  ║
    ║                                                            ║
    ║  "As Lead transforms to Gold,                            ║
    ║   so too does the self transform through the Work."       ║
    ║                                                            ║
    ║  Based on the wisdom of:                                 ║
    ║  - GRIMOIRE: The Philosopher's Stone                    ║
    ║  - Milton H. Erickson (Therapeutic Hypnosis)            ║
    ║  - Bandler & Grinder (NLP, Reframing)                   ║
    ║  - David Gordon (Therapeutic Metaphors)                  ║
    ║  - Overdurf & Silverthorn (Training Trances)            ║
    ║                                                            ║
    ║  May your transformation be complete. ✨                 ║
    ╚════════════════════════════════════════════════════════════╝
    """)
    print("🧪 "*20 + "\n")

def main_menu():
    """Display main menu and handle selection."""
    while True:
        print("\n" + "="*60)
        print("MAIN MENU")
        print("="*60)
        print("1. Create New Trance Script Session")
        print("2. Continue Existing Session (Update & Evolve)")
        print("3. List All Sessions")
        print("4. View Session Script")
        print("5. Exit")
        print("="*60)
        
        choice = input("\nSelect option (1-5): ").strip()
        
        if choice == "1":
            create_new_session()
        elif choice == "2":
            continue_session()
        elif choice == "3":
            list_all_sessions()
        elif choice == "4":
            view_session_script()
        elif choice == "5":
            print("\nMay your transformation continue. ✨\n")
            break
        else:
            print("Invalid choice. Please try again.")

def create_new_session():
    """Create and initialize a new trance script session."""
    print("\n" + "="*60)
    print("CREATE NEW SESSION")
    print("="*60)
    
    client_name = input("Enter your name (or alias): ").strip()
    if not client_name:
        print("Name required.")
        return
    
    print("\nDescribe the problem or pattern you'd like to transform.")
    print("Be specific about what you're experiencing and how it affects you:")
    problem = input("\nYour problem/pattern: ").strip()
    
    if not problem:
        print("Problem description required.")
        return
    
    # Create session
    session_id, session_data = create_session(client_name, problem)
    
    print(f"\n✨ Session created: {session_id}")
    print("Beginning the Alchemical Work...\n")
    
    # Generate scripts for each stage
    previous_context = ""
    for stage_key in ALCHEMICAL_STAGES.keys():
        stage_data = ALCHEMICAL_STAGES[stage_key]
        
        print(f"\n🔥 Generating {stage_data['name']}...")
        script = generate_trance_script(problem, stage_key, previous_context)
        
        session_data["script_sections"][stage_key] = script
        session_data["stage_completion"][stage_key] = True
        previous_context = script
        
        time.sleep(0.5)  # Rate limiting
    
    session_data["last_updated"] = datetime.now().isoformat()
    save_session(session_id, session_data)
    
    print("\n" + "="*60)
    print("✨ INITIAL TRANCE SCRIPT COMPLETE ✨")
    print("="*60)
    print(f"Session saved: {session_id}")
    print("\nYour session contains:")
    print("  • Nigredo: Breaking down and facing the pattern")
    print("  • Albedo: Purification and clarity")
    print("  • Citrinitas: Integration and synthesis")
    print("  • Rubedo: Completion and the Gold state")
    print("\nWhen you're ready, you can continue and evolve this work.")

def continue_session():
    """Continue an existing session with an update."""
    print("\n" + "="*60)
    print("CONTINUE EXISTING SESSION")
    print("="*60)
    
    client_name = input("Enter your name: ").strip()
    sessions = list_sessions(client_name)
    
    if not sessions:
        print(f"No sessions found for {client_name}.")
        return
    
    print("\nYour sessions:")
    session_list = list(sessions.items())
    for i, (sid, session) in enumerate(session_list, 1):
        created = session["created_at"][:10]
        problem = session["problem_history"][0]["description"][:50]
        print(f"{i}. {sid} (Created: {created}) - {problem}...")
    
    try:
        choice = int(input(f"\nSelect session (1-{len(session_list)}): ").strip())
        if 1 <= choice <= len(session_list):
            session_id, session_data = session_list[choice - 1]
        else:
            print("Invalid selection.")
            return
    except ValueError:
        print("Invalid input.")
        return
    
    # Get client update
    print("\n" + "="*60)
    print("DESCRIBE YOUR UPDATE")
    print("="*60)
    print("How has your situation evolved?")
    print("What changes have you noticed?")
    print("What new insights or challenges have emerged?")
    
    client_update = input("\nYour update: ").strip()
    if not client_update:
        print("Update required to continue.")
        return
    
    # Add to problem history
    session_data["problem_history"].append({
        "timestamp": datetime.now().isoformat(),
        "description": client_update,
        "stage": "evolution"
    })
    
    # Generate evolution script
    print("\n🔥 Evolving your script based on your growth...\n")
    evolution_script, current_stage = evolve_script(session_data, client_update)
    
    # Save evolution
    evolution_key = f"{current_stage}_evolution_{len([s for s in session_data['script_sections'].keys() if 'evolution' in s])}"
    session_data["script_sections"][evolution_key] = evolution_script
    session_data["last_updated"] = datetime.now().isoformat()
    
    save_session(session_id, session_data)
    
    print("\n" + "="*60)
    print("✨ SCRIPT EVOLVED ✨")
    print("="*60)
    print(f"New section added: {evolution_key}")
    print("Your work continues to deepen...")
    print("\nWhen you're ready, you can update again and evolve further.")

def list_all_sessions():
    """List all available sessions."""
    sessions = load_sessions()
    
    if not sessions:
        print("\nNo sessions found.")
        return
    
    print("\n" + "="*60)
    print("ALL SESSIONS")
    print("="*60)
    
    for session_id, session in sessions.items():
        created = session["created_at"][:10]
        updated = session["last_updated"][:10]
        client = session["client_name"]
        problem = session["problem_history"][0]["description"][:45]
        updates = len(session["problem_history"]) - 1
        
        print(f"\n📜 {session_id}")
        print(f"   Client: {client}")
        print(f"   Created: {created}, Last Updated: {updated}")
        print(f"   Problem: {problem}...")
        print(f"   Updates: {updates}")

def view_session_script():
    """View the full script for a session."""
    print("\n" + "="*60)
    print("VIEW SESSION SCRIPT")
    print("="*60)
    
    client_name = input("Enter client name: ").strip()
    sessions = list_sessions(client_name)
    
    if not sessions:
        print(f"No sessions found for {client_name}.")
        return
    
    session_list = list(sessions.items())
    for i, (sid, session) in enumerate(session_list, 1):
        print(f"{i}. {sid}")
    
    try:
        choice = int(input(f"\nSelect session (1-{len(session_list)}): ").strip())
        if 1 <= choice <= len(session_list):
            session_id, session_data = session_list[choice - 1]
        else:
            print("Invalid selection.")
            return
    except ValueError:
        print("Invalid input.")
        return
    
    # Display full script
    print("\n" + "="*60)
    print(f"TRANCE SCRIPT: {session_data['client_name']}")
    print("="*60)
    print(f"Original Problem: {session_data['problem_history'][0]['description']}\n")
    
    for section_name, script_content in session_data["script_sections"].items():
        print(f"\n{'─'*60}")
        print(f"[{section_name.upper()}]")
        print(f"{'─'*60}\n")
        print(script_content)
    
    # Option to save to file
    save_choice = input("\n\nSave script to file? (y/n): ").strip().lower()
    if save_choice == 'y':
        filename = f"{SCRIPTS_DIR}/{session_id}_full_script.txt"
        with open(filename, "w", encoding="utf-8") as f:
            f.write(f"ELIXIR OF LIFE - TRANCE SCRIPT\n")
            f.write(f"Client: {session_data['client_name']}\n")
            f.write(f"Created: {session_data['created_at']}\n")
            f.write(f"Last Updated: {session_data['last_updated']}\n")
            f.write(f"\nORIGINAL PROBLEM:\n{session_data['problem_history'][0]['description']}\n")
            
            if len(session_data['problem_history']) > 1:
                f.write(f"\nEVOLUTIONS:\n")
                for update in session_data['problem_history'][1:]:
                    f.write(f"  - {update['timestamp']}: {update['description']}\n")
            
            f.write(f"\n{'='*60}\n")
            f.write(f"TRANCE SCRIPT\n")
            f.write(f"{'='*60}\n\n")
            
            for section_name, script_content in session_data["script_sections"].items():
                f.write(f"\n[{section_name.upper()}]\n{'─'*60}\n")
                f.write(script_content)
                f.write(f"\n\n")
        
        print(f"✨ Script saved to: {filename}")

# ==================== MAIN EXECUTION ====================
if __name__ == "__main__":
    print_header()
    main_menu()