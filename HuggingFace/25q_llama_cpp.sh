#!/bin/bash
source /home/rick/.venv/bin/activate
pypath=/home/rick/.venv/bin/python
#for i in {1..2}
#do
	date=$(date +"%Y-%m-%d-%H-%M-%S")
#Gemma3 1b
	#$pypath new_script.py google/gemma-3-1b-it-qat-q4_0-gguf gemma-3-1b-it-q4_0.gguf > testing_output.txt 2>&1
	#$pypath 1parsed.py testing_output.txt gemma3-1b_${date}.txt
	#echo "Gemma3 1b ${date} Done"
	#python3 prompt_exe.py google/gemma-3-1b-it-qat-q4_0-gguf gemma-3-1b-it-q4_0.gguf > testing_output.txt 2>&1
	#python3 1parsed.py testing_output.txt gemma3-1b_${date}.txt

#Gemma3 4b
	#python3 new_script.py google/gemma-3-4b-it-qat-q4_0-gguf gemma-3-4b-it-q4_0.gguf > testing_output.txt 2>&1
	#python3 1parsed.py testing_output.txt gemma3-4b_${date}.txt
	#echo "Gemma3 4b ${date} Done"
	#python3 prompt_exe.py google/gemma-3-4b-it-qat-q4_0-gguf gemma-3-4b-it-q4_0.gguf > testing_output.txt 2>&1
	#python3 1parsed.py testing_output.txt gemma3-4b_${date}.txt

#Gemma3 12b q4
	#python3 new_script.py google/gemma-3-12b-it-qat-q4_0-gguf gemma-3-12b-it-q4_0.gguf > testing_output.txt 2>&1
	#python3 1parsed.py testing_output.txt gemma3-12b_${date}.txt
	#echo "Gemma3 12b ${date} Done"
	#python3 prompt_exe.py google/gemma-3-12b-it-qat-q4_0-gguf gemma-3-12b-it-q4_0.gguf > testing_output.txt 2>&1
	#python3 1parsed.py testing_output.txt gemma3-12b_${date}.txt

#Gemma3 27b q4
#	python3 new_script.py google/gemma-3-27b-it-qat-q4_0-gguf gemma-3-27b-it-q4_0.gguf > testing_output.txt 2>&1
#	python3 1parsed.py testing_output.txt gemma3-27b_${date}.txt
#	echo "Gemma3 27b ${date} Done"
	#python3 prompt_exe.py google/gemma-3-27b-it-qat-q4_0-gguf gemma-3-27b-it-q4_0.gguf > testing_output.txt 2>&1
	#python3 1parsed.py testing_output.txt gemma3-27b_${date}.txt

#Llama 3.1 8b q4
#	python3 new_script.py bartowski/Meta-Llama-3.1-8B-Instruct-GGUF Meta-Llama-3.1-8B-Instruct-IQ2_M.gguf > testing_output.txt 2>&1
#	python3 1parsed.py testing_output.txt llama3.1-8b_${date}.txt
#	echo "Llama 3.1 8b ${date} Done"
	#python3 prompt_exe.py bartowski/Meta-Llama-3.1-8B-Instruct-GGUF Meta-Llama-3.1-8B-Instruct-IQ2_M.gguf > testing_output.txt 2>&1
	#python3 1parsed.py testing_output.txt llama3.1-8b_${date}.txt

#Llama 3.2 1b q4
	#python3 alt_script.py QuantFactory/Dolphin3.0-Llama3.2-1B-GGUF Dolphin3.0-Llama3.2-1B.Q4_0.gguf > testing_output.txt 2>&1
	#python3 1parsed.py testing_output.txt llama3.2-1b_${date}.txt
	#echo "Llama 3.2 1b ${date} Done"
	#python3 prompt2_exe.py QuantFactory/Dolphin3.0-Llama3.2-1B-GGUF Dolphin3.0-Llama3.2-1B.Q4_0.gguf > testing_output.txt 2>&1
	#python3 1parsed.py testing_output.txt llama3.2-1b_${date}.txt

#Llama 3.2 3b q4
	#python3 new_script.py unsloth/Llama-3.2-3B-Instruct-GGUF Llama-3.2-3B-Instruct-Q4_0.gguf > testing_output.txt 2>&1
	#python3 1parsed.py testing_output.txt llama3.2-3b_${date}.txt
	#echo "Llama 3.2 3b ${date} Done"
	#python3 prompt_exe.py unsloth/Llama-3.2-3B-Instruct-GGUF Llama-3.2-3B-Instruct-Q4_0.gguf > testing_output.txt 2>&1
	#python3 1parsed.py testing_output.txt llama3.2-3b_${date}.txt

#DeepSeek R1 7b
	python3 alt_script.py unsloth/DeepSeek-R1-Distill-Qwen-7B-GGUF DeepSeek-R1-Distill-Qwen-7B-Q4_K_M.gguf > testing_output.txt 2>&1
	python3 1parsed.py testing_output.txt deepseek-r1-7b_${date}.txt
	echo "DeepSeek R1 7b ${date} Done"
	#python3 prompt2_exe.py unsloth/DeepSeek-R1-Distill-Qwen-7B-GGUF DeepSeek-R1-Distill-Qwen-7B-Q4_K_M.gguf > testing_output.txt 2>&1
	#python3 1parsed.py testing_output.txt deepseek3-r1-7b_${date}.txt

#Mistral 7b
#	python3 q_script.py netrunnerllm/Mistral-7B-Instruct-v0.3-Q4_K_M-GGUF mistral-7b-instruct-v0.3-q4_k_m.gguf > testing_output.txt 2>&1
#	python3 1parsed.py testing_output.txt mistral-7b_${date}.txt
#	echo "Mistral 7B ${date} Done"
#Qwen3 4b
#	python3 q_script.py Qwen/Qwen3-4B-GGUF Qwen3-4B-Q4_K_M.gguf > testing_output.txt 2>&1
#	python3 1parsed.py testing_output.txt Qwen3-4b_${date}.txt
#	echo "Qwen 4B ${date} Done"
#done

