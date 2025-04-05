import random
import subprocess
from langchain_ollama import OllamaLLM
from langchain_core.prompts import ChatPromptTemplate

# 31 functions of the folktale defined here.
folktale_functions = [
    "Function 1: The Call to Adventure",
    "Function 2: Refusal of the Call",
    "Function 3: Meeting the Mentor",
    "Function 4: Crossing the Threshold",
    "Function 5: Tests, Allies, Enemies",
    "Function 6: Approach",
    "Function 7: The Ordeal",
    "Function 8: Reward",
    "Function 9: The Road Back",
    "Function 10: Resurrection",
    "Function 11: Return with the Elixir",
    "Function 12: The Transformation",
    "Function 13: The Quest",
    "Function 14: The Prophecy",
    "Function 15: The Magic Helper",
    "Function 16: The Darkest Hour",
    "Function 17: The Ultimate Boon",
    "Function 18: The Return",
    "Function 19: The Sacrifice",
    "Function 20: The Revelation",
    "Function 21: The Betrayal",
    "Function 22: The Challenge",
    "Function 23: The Journey",
    "Function 24: The Rebirth",
    "Function 25: The Magic of Nature",
    "Function 26: The Hidden World",
    "Function 27: The Miracle",
    "Function 28: The Encounter",
    "Function 29: The Transformation",
    "Function 30: The Destiny",
    "Function 31: The Epilogue"
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

def select_folktale_functions():
    """
    Randomly selects a number (between 5 and 13) of folktale functions.
    Returns them as a formatted string.
    """
    num_functions = random.randint(5, 13)
    selected_funcs = random.sample(folktale_functions, num_functions)
    return "\n".join(selected_funcs)

def handle_conversation():
    """
    Enhanced conversation loop.
    When the user types "story":
      - Run run_main.bat to generate story elements.
      - Capture and combine its output with randomly selected folktale functions.
      - Modify the question prompt to instruct the language model to create a complete story.
    For other inputs, continue with the standard conversation.
    """
    context = ""
    extra_context = ""
    print("Welcome to the Enjn Design ChatBot!")
    print("Type 'exit' to quit or 'story' to generate a folktale story with random functions.")
    
    while True:
        user_input = input("You: ")
        if user_input.lower() == "exit":
            break

        if user_input.lower() == "story":
            # Capture the output from the external story generator.
            bat_output = run_main_bat()
            print("DEBUG: Batch output captured:\n", bat_output)
            # Randomly select folktale functions.
            selected = select_folktale_functions()
            # Combine both sources into the extra context.
            extra_context = (
                f"Story Generator Output:\n{bat_output}\n\n"
                f"Selected Folktale Functions:\n{selected}\n"
            )
            # Instruct the LM to generate a complete folktale story.
            modified_question = ("Using the above story generator output and the selected folktale functions, "
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
        print("\nBot:", result, "\n")
        context += f"\nUser: {user_input}\nAI: {result}"
        
        # Optional: Reset conversation history for story-generation commands to avoid building huge context.
        if user_input.lower() == "story":
            context = ""  # or trim context as needed
    
if __name__ == "__main__":
    handle_conversation()