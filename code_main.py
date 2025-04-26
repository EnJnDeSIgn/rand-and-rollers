from transformers import pipeline
import os
import tempfile
from story_module import generate_story  # Import the /story functionality

# Initialize a file-backed code buffer
buffer_file = tempfile.NamedTemporaryFile(delete=False, mode='w+', encoding='utf-8')

# Load the GPT-Neo model for text generation
code_assistant_pipeline = pipeline("text-generation", model="EleutherAI/gpt-neo-1.3B")

# Conversation memory to store context
conversation_memory = []

# Prompt template for structured interaction
PROMPT_TEMPLATE = """
Conversation History:
{history}

User Query:
{query}

Context:
{context}

AI Response:
"""

def add_to_file_buffer(file, new_content):
    """
    Adds new content to the file-backed buffer.
    """
    file.write(new_content + "\n")
    file.flush()  # Ensure content is written to disk

def read_file_buffer(file):
    """
    Reads the content of the file-backed buffer.
    """
    file.seek(0)  # Go to the beginning of the file
    return file.read()

def clear_file_buffer(file):
    """
    Clears the content of the file-backed buffer.
    """
    file.seek(0)
    file.truncate()  # Delete all content in the file

def generate_ai_response(query, context):
    """
    Generate an AI response using the conversation memory and context.
    """
    # Limit conversation history to the last 5 exchanges to avoid exceeding token limits
    history = "\n".join([f"User: {item['user']}\nAI: {item['ai']}" for item in conversation_memory[-5:]])

    # Format the prompt
    prompt = PROMPT_TEMPLATE.format(history=history, query=query, context=context)

    # Generate the response using `max_new_tokens` instead of `max_length`
    response = code_assistant_pipeline(prompt, max_new_tokens=150, num_return_sequences=1)
    ai_response = response[0]["generated_text"]

    # Add to conversation memory
    conversation_memory.append({"user": query, "ai": ai_response})

    return ai_response

def handle_code_mode():
    """
    Interactive mode for writing and handling code, including AI assistance with user queries and /story command.
    """
    print("Entering code mode. Type '/exit' to leave, '/save <filename>' to save, '/view' to view, '/clear' to clear, '/ask' to ask the AI, '/story' to generate a random story, or type code directly.")

    while True:
        user_input = input("\nCode> ").strip()

        if user_input.lower() in ["/exit", "/quit"]:
            print("Exiting code mode...")
            break
        elif user_input.lower().startswith("/save"):
            parts = user_input.split(" ", 1)
            if len(parts) > 1:
                try:
                    with open(parts[1].strip(), "w", encoding="utf-8") as f:
                        f.write(read_file_buffer(buffer_file))  # Use file buffer content
                    print(f"Code saved to: {parts[1].strip()}")
                except Exception as e:
                    print(f"Error saving code: {e}")
            else:
                print("Error: Provide a filename. Usage: /save <filename>")
        elif user_input.lower() == "/view":
            print("\nCurrent Code Buffer:\n" + (read_file_buffer(buffer_file) if read_file_buffer(buffer_file) else "(Empty)"))
        elif user_input.lower() == "/clear":
            clear_file_buffer(buffer_file)
            print("Code buffer cleared.")
        elif user_input.lower() == "/ask":
            code_buffer = read_file_buffer(buffer_file)
            if not code_buffer.strip():
                print("The code buffer is empty. Add some code before asking the AI for assistance.")
            else:
                print("Enter your question about the code buffer, or press Enter to cancel:")
                query = input("Your Question: ").strip()
                if query:
                    print("Sending code Buffer and Query to AI for assistance...")
                    try:
                        ai_response = generate_ai_response(query, code_buffer)
                        print("\nAI Response:\n", ai_response)
                    except Exception as e:
                        print("Error during AI assistance:", e)
                else:
                    print("Query cancelled.")
        elif user_input.lower() == "/story":
            # Generate and display a random story
            print("\nGenerating a story...")
            story = generate_story()
            print(story)
            # Add story to conversation memory
            conversation_memory.append({"user": "/story", "ai": story})
        else:
            add_to_file_buffer(buffer_file, user_input)
            print("Code added to buffer.")

if __name__ == "__main__":
    # Start code mode
    handle_code_mode()