


echo "Start Script"

ollama run deepseek-r1 "What is the capital of Hungary?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" > deepseek.txt
echo "Prompt 1 done"
ollama run deepseek-r1 "Classify the sentiment of the following review: 'The food was cold and the service was terrible.' Answer with Positive, Neutral, or Negative." --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 2 done"
ollama run deepseek-r1 "If a train leaves at 2:00 PM traveling 60 miles per hour, how far will it travel in 2.5 hours?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 3 done"
ollama run deepseek-r1 "Is the following news headline about politics, sports, or entertainment? 'Senate passes new infrastructure bill after bipartisan agreement.'" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 4 done"
ollama run deepseek-r1 "Translate this sentence to French: 'The cat is sleeping on the couch.'" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 5 done"
ollama run deepseek-r1 "If you drop a glass on a concrete floor, what happens?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 6 done"
ollama run deepseek-r1 "Write a Python function that returns the factorial of a number." --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 7 done"
ollama run deepseek-r1 "Man is to woman as king is to ___." --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 8 done"
ollama run deepseek-r1 "Correct the grammar in this sentence: 'She don’t like the cold weather.'" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 9 done"
ollama run deepseek-r1 "What does the word ambivalent mean?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 10 done"
ollama run deepseek-r1 "Passage: Emma walked into the room and turned on the light. The window was open, and the breeze made the curtains flutter. She smiled, remembering summers at her grandmother’s house. Question: What is the mood of the passage?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 11 done"
ollama run deepseek-r1 "Who painted the Mona Lisa?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 12 done"
ollama run deepseek-r1 "If a bat and a ball cost $1.10 in total, and the bat costs $1.00 more than the ball, how much does the ball cost?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 13 done"
ollama run deepseek-r1 "You’re at a restaurant and you drop your glass. It shatters. What should you do next?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 14 done"
ollama run deepseek-r1 "What is the square root of 144?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 15 done"
ollama run deepseek-r1 "You have 6 apples. You give 2 to John and cut the rest in half. How many apple pieces do you have?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 16 done"
ollama run deepseek-r1 "Write a short story about a robot who discovers music." --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 17 done"
ollama run deepseek-r1 "Rewrite this sentence to sound more formal: ‘I’m gonna be late to the meeting.’" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 18 done"
ollama run deepseek-r1 "Translate this sentence to German: ‘I would like a coffee, please.’" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 19 done"
ollama run deepseek-r1 "Label the sentiment of this review as Positive, Negative, or Neutral: ‘The service was okay, but the food was fantastic.’" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 20 done"
ollama run deepseek-r1 "Identify all people, organizations, and locations in this sentence: ‘Apple Inc. hired Jane Smith to manage its new office in Berlin.’" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 21 done"
ollama run deepseek-r1 "Write a Python function that returns the Fibonacci sequence up to n." --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 22 done"
ollama run deepseek-r1 "Here's a sentence: 'Wow, thanks for that brilliant idea.' What kind of tone does this sentence use?" --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 23 done"
ollama run deepseek-r1 "You are a pirate. Greet me in pirate talk." --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 24 done"
ollama run deepseek-r1 "List three benefits of solar power in bullet points." --verbose 2>&1 | grep -iE "eval|token|latency|duration" >> deepseek.txt
echo "Prompt 25 done"
echo "End Script"
