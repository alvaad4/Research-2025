# Research-2025
# Adam Alvarado and Rick King
# June 9th - August 16th

This project focuses on understanding the resource demands of Large Language Models (LLMs) in production environments, specifically the costs associated with using them after they have been trained. While the training of LLMs has been studied in depth, little attention has been given to the ongoing resource usage. Using open-source LLMs like DeepSeek and LLaMA, we will set up a testing environment that simulates real world chatbot deployments. The goal is to measure the performance of LLMs under different usage scenarios, such as varying user loads and prompt lengths.

Project Progress Update (as of 6/12/25)
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
