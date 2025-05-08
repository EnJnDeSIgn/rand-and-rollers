import os
import json
import time
from langchain_ollama import OllamaLLM
from langchain_core.prompts import ChatPromptTemplate
from sentence_transformers import SentenceTransformer, util  # For semantic search

# Initialize global variables
working_code_buffer = ""  # Initialize code buffer
MEMORY_FILE = "memory.json"  # File to store memory
embedding_model = SentenceTransformer('all-MiniLM-L6-v2')  # Semantic embedding model

# Load or initialize memory storage
def load_memory():
    if os.path.exists(MEMORY_FILE):
        with open(MEMORY_FILE, "r", encoding="utf-8") as f:
            return json.load(f)
    return []

def save_memory(memory):
    with open(MEMORY_FILE, "w", encoding="utf-8") as f:
        json.dump(memory, f, indent=4)

def add_to_memory(buffer, query, response):
    """
    Save a query and response pair to memory with semantic embeddings.
    """
    memory = load_memory()
    embedding = embedding_model.encode(query, convert_to_tensor=True).tolist()
    memory.append({
        "timestamp": time.ctime(),
        "query": query,
        "response": response,
        "embedding": embedding
    })
    save_memory(memory)
    print("Memory successfully updated.")

def retrieve_relevant_memory(query, top_k=3):
    """
    Retrieve the top_k most relevant memory entries for a given query.
    """
    memory = load_memory()
    if not memory:
        return []

    query_embedding = embedding_model.encode(query, convert_to_tensor=True)
    similarities = [
        (entry, util.cos_sim(query_embedding, entry["embedding"]).item())
        for entry in memory
    ]
    relevant_entries = sorted(similarities, key=lambda x: x[1], reverse=True)[:top_k]
    return [entry[0] for entry in relevant_entries]

def handle_ask_code():
    """
    Enhanced command to process user queries with semantic memory and contextual retrieval.
    """
    global working_code_buffer
    if not working_code_buffer.strip():
        print("The code buffer is empty. Add some code before asking the AI for assistance.")
        return

    print("Enter your question about the code buffer, or press Enter to cancel:")
    query = input("Your Question: ").strip()
    if query:
        print("Sending code buffer and query to EnJn's AI for Sweetie Assistance...")

        # Retrieve relevant memory
        relevant_memory = retrieve_relevant_memory(query)
        memory_context = "\n\n".join(
            f"Memory Entry from {entry['timestamp']}:\nQuery: {entry['query']}\nResponse: {entry['response']}"
            for entry in relevant_memory
        )

        # Build context for the query
        prompt_context = f"Relevant Memory:\n{memory_context}\n\nCurrent Buffer:\n{working_code_buffer}\n\nQuery: {query}"

        try:
            response = chain.invoke({
                "context": prompt_context,
                "extra_context": f"Question: {query}",
                "question": "Provide detailed assistance based on the query and code buffer."
            })

            print("\nEnJnDeSIgn AI Response:\n", response)
            add_to_memory(working_code_buffer, query, response)  # Save to memory
        except Exception as e:
            print("Error during AI assistance:", e)
    else:
        print("Query cancelled.")

# Main function
if __name__ == "__main__":
    print("Welcome to Code Assistant!")
    while True:
        command = input("\nCode Assistant> ").strip().lower()
        if command == "/exit":
            print("Exiting Code Assistant. Goodbye!")
            break
        elif command == "/ask":
            handle_ask_code()
        elif command.startswith("/addbuffer"):
            # Add content to the code buffer
            _, content = command.split(" ", 1)
            working_code_buffer += content + "\n"
            print("Code added to buffer.")
        elif command == "/clearbuffer":
            working_code_buffer = ""
            print("Code buffer cleared.")
        elif command == "/viewbuffer":
            print(f"Current Code Buffer:\n{working_code_buffer}")
        else:
            print("Unknown command. Available commands: /ask, /addbuffer, /clearbuffer, /viewbuffer, /exit")