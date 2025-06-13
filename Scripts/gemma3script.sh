


echo "Start Script"

ollama run gemma3 "What is the capital of Hungary?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" > gemma3.txt
ollama run gemma3 "Classify the sentiment of the following review: 'The food was cold and the service was terrible.' Answer with Positive, Neutral, or Negative." --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "If a train leaves at 2:00 PM traveling 60 miles per hour, how far will it travel in 2.5 hours?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "Is the following news headline about politics, sports, or entertainment? 'Senate passes new infrastructure bill after bipartisan agreement.'" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "Translate this sentence to French: 'The cat is sleeping on the couch.'" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "If you drop a glass on a concrete floor, what happens?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "Write a Python function that returns the factorial of a number." --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "Man is to woman as king is to ___." --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "Correct the grammar in this sentence: 'She don’t like the cold weather.'" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "What does the word ambivalent mean?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "Passage: Emma walked into the room and turned on the light. The window was open, and the breeze made the curtains flutter. She smiled, remembering summers at her grandmother’s house. Question: What is the mood of the passage?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "Who painted the Mona Lisa?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "If a bat and a ball cost $1.10 in total, and the bat costs $1.00 more than the ball, how much does the ball cost?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "You’re at a restaurant and you drop your glass. It shatters. What should you do next?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "What is the square root of 144?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "You have 6 apples. You give 2 to John and cut the rest in half. How many apple pieces do you have?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "Write a short story about a robot who discovers music." --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "Rewrite this sentence to sound more formal: ‘I’m gonna be late to the meeting.’" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "Translate this sentence to German: ‘I would like a coffee, please.’" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "Label the sentiment of this review as Positive, Negative, or Neutral: ‘The service was okay, but the food was fantastic.’" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "Identify all people, organizations, and locations in this sentence: ‘Apple Inc. hired Jane Smith to manage its new office in Berlin.’" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "Write a Python function that returns the Fibonacci sequence up to n." --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "Here's a sentence: 'Wow, thanks for that brilliant idea.' What kind of tone does this sentence use?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "You are a pirate. Greet me in pirate talk." --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
ollama run gemma3 "List three benefits of solar power in bullet points." --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> gemma3.txt
echo "End Script"
