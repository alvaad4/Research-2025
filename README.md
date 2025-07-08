# Research-2025 - Adam Alvarado and Rick King
June 9th - August 16th

This project focuses on understanding the resource demands of Large Language Models (LLMs) in production environments, specifically the costs associated with using them after they have been trained. While the training of LLMs has been studied in depth, little attention has been given to the ongoing resource usage. Using open-source LLMs like DeepSeek and LLaMA, we will set up a testing environment that simulates real world chatbot deployments. The goal is to measure the performance of LLMs under different usage scenarios, such as varying user loads and prompt lengths.

Project Progress Update (as of 7/7/25)
Over the past week, we’ve made significant strides in setting up our development environment, exploring LLMs, and building a robust system for automated data collection and analysis.

Week Overview:

6/9/25 – Orientation & Initial Setup

- Set up Git, GitHub, and SSH keys.

- Practiced Git commands and tested functionality on a shared repository.

- Researched foundational LLMs including LLaMA, Gemma, and DeepSeek.

- Gained first access to the server; installed and ran Ollama.

- Started research into data gathering—focusing on CPU, RAM, Disk, and Network usage.

6/10/25 – Data Collection Automation Begins

- Implemented Netdata on the server for real-time system monitoring.

- Developed early automation scripts using --verbose 2>&1 | tee text.txt to log LLM stats.

- Began working with regular expressions, and Python’s os, re, and csv libraries to clean and parse data.

6/11/25 – Prompt Automation & Early Visualization

- Designed a standard set of LLM prompts and automated their execution.

- Built Python scripts to extract performance stats using regular expressions.

- Started creating initial graphs and plots; encountered and resolved early Git issues.

6/12/25 – Finalizing Data Pipelines & Visualization

- Finalized regular expression patterns and data parsing scripts.

- Organized results into data frames using Pandas, and visualized trends with Matplotlib and Seaborn.

- Collected early data sets and began exploratory analysis (e.g., graphs, 5-number summaries).

- Continued prompt generation and LLM testing (e.g., using "Summarize this file" < mobydick.txt).

- Experimented with token limits, stack usage, and LLM config settings for improved model output.

6/13/25 – Dataset Exploration & Technical Setbacks
Finalized initial data exploration setup and ran through several gathered datasets.

- Formatted Git repository for better organization.

- Sourced long prompts from short stories to test LLM comprehension.

- Faced technical issues:

- Ollama instability

- Limited computing resources

- Broken LLMs and coding bugs

6/16/25 – Literature Review & System Migration
Conducted literature review on LLM throughput and latency (ACM Paper).

- Reviewed key terms: tokens, throughput, TTFT.

- Began exploring Ollama Python API and Hugging Face LLM hosting.

- Migrated Ollama to new hard drive and began transferring models.

- Represented CS Department at the Pathways Fair.

6/17/25 – Storage & Model Comparisons
Diagnosed external storage access issues after adding 1TB drive.

- Gathered comparative data on all available Gemma models.

- Installed LLaMA and created scripts for all versions.

- Created additional prompts, including math-based inputs.

6/18/25 – Access & Admin Config
Installed Hugging Face models to Seagate drive.

- Created new root password and admin account.

- Attended Pathways Fair again for CS Department representation.

6/20/25 – Server Scripting & Virtual Environments
Developed new script execution concepts:

- screen for long-running scripts

- Shebang (#!) for multi-language script compatibility

- Passed arguments to shell scripts using ./script.sh <model>

- Successfully mounted and accessed Seagate drive.

- Installed Ollama into main server, redirected model paths with OLLAMA_MODELS and OLLAMA_TMPDIR.

- Installed Hugging Face into Seagate via virtual environments.

6/23/25 – Event Day & Ollama Testing
Commanded Ollama to run models with reduced load.

- Tested scripts.

- Represented CS at:

  - 1:15 Major Fair

  - 3:00–5:00 Student Shadow

6/24/25 – Master Script Setup & Output Structuring
Finalized Ollama script structure.

- Created master scripts for long prompts and 25 base questions.

- Appended timestamps to stats file outputs.

- Began gathering Hugging Face outputs.

6/25/25 – Metric Analysis & Output Automation
Hugging Face Gemma run failed (initial attempts).

- Installed quantized LLMs—dramatically improved speed.

- Wrote Hugging Face output-to-graph code (early version).

- Researched LLM benchmarking (Hugging Face Leaderboard).

- Looked into CO₂ usage and other runtime metrics.

Defined Primary Research Idea:
“What is the lightest, most stable LLM for deployment in a basic web server setting?”

- Refined regex data parsing

6/26/25 – Tokenization Deep Dive & Research

- Explored tokenization impact across languages and use cases.

Began reviewing foundational papers:

  - “Language Models are Unsupervised Multitask Learners”

  - “DeepSeek: LLM Scaling with Longtermism”

6/27/25 – Hugging Face & LLM Architecture Study
Hugging Face working successfully.

- Tested with LLaMA.cpp and Transformers libraries.

- Compared benchmark outputs across architectures.

- Began preparing internal presentation of findings.

6/30/25 – Benchmarking and Automation
Set up LLM benchmarks to run overnight.

- Progressed Hugging Face scripting and parsing workflows.

- Integrated regular expressions for stat parsing.

7/1/25 – Web Server Development & Prompt Automation
Created internal web server.

- Basic CSS and frontend setup (testing layout).

- Resolved LLM install issue (“LLM not found” bug).

- Gathered output and error streams using > output.txt 2>&1.

- Refined automated parsing pipeline.

7/2/25 – Dataset Expansion & Overnight Scripts
Ran LLM evaluations (exploratory).

- Enabled multi-dataset compatibility for data-vis-huggingface.

- Finalized auto-run scripts for Gemma, LLaMA, DeepSeek.

- Generated data-visualizations for Hugging Face cpp models.

7/3/25 – Full Hugging Face Automation & Future Goals
Built Python scripts to auto-run all models in Hugging Face.

- Used Pandas/Seaborn in VS Code for data graphs.

7/7/25 – Prompt Refinement & Data Contextualization
Developed prompt engineering strategies.

- Automated long prompts (5 short stories with summaries).

- refined and implemented prompts
 
