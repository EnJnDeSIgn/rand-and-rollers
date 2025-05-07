import json
import time
import os

# Define file to store conversation history
CONVERSATION_HISTORY_FILE = "conversation_history.json"

# Load or initialize conversation history
def load_conversation_history():
    if os.path.exists(CONVERSATION_HISTORY_FILE):
        with open(CONVERSATION_HISTORY_FILE, "r", encoding="utf-8") as f:
            return json.load(f)
    return []

def save_conversation_history(history):
    with open(CONVERSATION_HISTORY_FILE, "w", encoding="utf-8") as f:
        json.dump(history, f, indent=4)

def add_to_conversation_history(query, response):
    """
    Add a query and response pair to the conversation history.
    """
    history = load_conversation_history()
    history.append({
        "timestamp": time.ctime(),
        "query": query,
        "response": response
    })
    save_conversation_history(history)
    print("Conversation history updated.")

def view_conversation_history():
    """
    View all stored conversations.
    """
    history = load_conversation_history()
    if not history:
        print("No conversation history found.")
        return
    for idx, entry in enumerate(history):
        print(f"ID: {idx}, Timestamp: {entry['timestamp']}")
        print(f"  Query: {entry['query']}")
        print(f"  Response: {entry['response']}\n")

def search_conversation_history(term):
    """
    Search conversation history for a specific term.
    """
    history = load_conversation_history()
    if not history:
        print("No conversation history found.")
        return
    results = [entry for entry in history if term.lower() in entry['query'].lower() or term.lower() in entry['response'].lower()]
    if not results:
        print(f"No matches found for '{term}'.")
        return
    for idx, entry in enumerate(results):
        print(f"Match {idx + 1}: Timestamp: {entry['timestamp']}")
        print(f"  Query: {entry['query']}")
        print(f"  Response: {entry['response']}\n")

def clear_conversation_history():
    """
    Clear all stored conversation history.
    """
    if os.path.exists(CONVERSATION_HISTORY_FILE):
        os.remove(CONVERSATION_HISTORY_FILE)
        print("Conversation history cleared.")
    else:
        print("No conversation history to clear.")

# Enhanced /ask command
def handle_ask_code():
    """
    Enhanced /ask command to include conversation history saving.
    """
    global working_code_buffer
    if not working_code_buffer.strip():
        print("The code buffer is empty. Add some code before asking the AI for assistance.")
        return

    print("Enter your question about the code buffer, or press Enter to cancel:")
    query = input("Your Question: ").strip()
    if query:
        print("Sending code buffer and query to EnJn's AI for Sweetie Assistance...")
        try:
            # Build the prompt for the AI
            prompt_context = f"Current Buffer:\n{working_code_buffer}\n\nQuery: {query}"
            response = chain.invoke({
                "context": prompt_context,
                "extra_context": f"Question: {query}",
                "question": "Provide detailed assistance based on the query and code buffer."
            })

            print("\nEnJnDeSIgn AI Response:\n", response)
            # Save query and response to conversation history
            add_to_conversation_history(query, response)
        except Exception as e:
            print("Error during AI assistance:", e)
    else:
        print("Query cancelled.")