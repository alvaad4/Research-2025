from llama_cpp import Llama
import sys
import re # Import regex for parsing

# --- Model Initialization ---
# This initializes the Llama model using command-line arguments for repo_id and filename.
# Example usage: python run_prompts.py "your_repo_id_here" "your_model_filename_here.gguf"
try:
    llm = Llama.from_pretrained(
        repo_id=sys.argv[1],
        filename=sys.argv[2],
        n_gpu_layers=-1, # Uncomment to offload all layers to GPU if supported
        n_ctx=4096,      # Adjust context window size if needed
    	n_threads=12
    )
    print(f"Model loaded: {sys.argv[1]} / {sys.argv[2]}")
except IndexError:
    print("Usage: python run_prompts.py <repo_id> <filename>")
    sys.exit(1)
except Exception as e:
    print(f"Error loading model: {e}")
    sys.exit(1)

# --- Prompt File Path ---
file_path = "test_questions.txt" # Assuming you saved the combined content into this file

# --- Parsing Function for Combined Prompts ---
def parse_prompts_file(filepath):
    single_line_prompts = []
    conversational_prompts = []
    current_conversation = []
    in_conversation_block = False

    with open(filepath, 'r') as file:
        for line_num, line in enumerate(file, 1):
            line = line.strip()

            if line.startswith("#"): # Skip comments
                continue

            if line == "--- CONVERSATION START ---":
                in_conversation_block = True
                current_conversation = [] # Reset for new conversation
                continue
            elif line == "--- CONVERSATION END ---":
                in_conversation_block = False
                if current_conversation:
                    conversational_prompts.append(current_conversation)
                current_conversation = [] # Clear for next potential block
                continue

            if in_conversation_block:
                # Regex to extract role and content from "role: content" format
                match = re.match(r"^(role|content):\s*(.*)$", line)
                if match:
                    key = match.group(1).strip()
                    value = match.group(2).strip()
                    if key == "role":
                        # Store role temporarily until content is found
                        temp_role = value
                    elif key == "content" and 'temp_role' in locals(): # Ensure role was just parsed
                        current_conversation.append({"role": temp_role, "content": value})
                        del temp_role # Clear temp_role for next message
                elif line: # If line is not empty and not a match, it's malformed
                    print(f"Warning: Malformed line in conversational block at line {line_num}: '{line}'")
            elif line.startswith("Question:"):
                # Extract the question text for single-line prompts
                question_text = line.replace("Question:", "", 1).strip()
                if question_text:
                    single_line_prompts.append(question_text)
            elif line: # Any other non-empty, non-comment line outside blocks
                print(f"Warning: Unrecognized line format at line {line_num}: '{line}'")

    return single_line_prompts, conversational_prompts

# --- Parse the prompts from the file ---
single_prompts, conv_prompts = parse_prompts_file(file_path)

#---
## Processing Single-Line Prompts
#---

print("\n" + "="*20 + " Processing Single-Line Prompts " + "="*20)
for i, prompt_text in enumerate(single_prompts):
    print(f"\n--- Single Prompt {i+1} ---")
    print(f"User: {prompt_text}")

    try:
        response = llm.create_chat_completion(
            messages=[
                {
                    "role": "user",
                    "content": prompt_text # Corrected this line
                }
            ],
            max_tokens=1000 # Adjust as needed
        )
    
        if response and response['choices']:
            llm_response = response['choices'][0]['message']['content']
            print(f"Assistant: {llm_response}")
            print(response)
        else:
            print("Assistant: No response generated.")
    except Exception as e:
        print(f"Error processing single prompt '{prompt_text[:50]}...': {e}")

#---
## Processing Conversational Prompts
#---

print("\n" + "="*20 + " Processing Conversational Prompts " + "="*20)
for i, conversation in enumerate(conv_prompts):
    print(f"\n--- Conversation {i+1} ---")

    # Ensure the conversation is valid for completion (ends with user message)
    if not conversation or conversation[-1]["role"] != "user":
        print("Skipping malformed conversation or conversation not ending with a user message. Make sure the last message in a conversation block is from the 'user'.")
        continue

    # Print the history for context
    for msg in conversation:
        print(f"{msg['role'].capitalize()}: {msg['content']}")

    try:
        # Call the model with the full conversational history
        response = llm.create_chat_completion(
            messages=conversation, # Pass the entire list of message dictionaries
            max_tokens=1000 # Adjust as needed
        )

        # Print the LLM's response
        if response and response['choices']:
            assistant_response = response['choices'][0]['message']['content']
            print(f"Assistant: {assistant_response}")
            print(response)
        else:
            print("Assistant: No response generated.")
    except Exception as e:
        print(f"Error processing conversation {i+1}: {e}")

