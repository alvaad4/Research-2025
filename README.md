# Research-2025 - Adam Alvarado and Rick King
## Description
This is a breif description of our project

## Table of Contents
 -[Installation](#Installation)\
 -[Usage](#Usage)\
 -[Features](#Features)\
 -[Contact](#Contact)

 ## Installation
 ```
#Clone the repository
git clone https://github.com/alvaad4/Research-2025.git

#We HIGHLY reccomend utilizing a virtual enviorment
pip install -r requirements.txt
```

## Usage
```

#Save your token inorder to access gated HF models
export HF_TOKEN="<insert your huggingface access token here>"

#This runs all listed models
./25q_llama_cpp.sh


#This runs all models with various caps on CPU utilization (Sudo is required for systemd-run command, -E maintains environment vars like PATH and HF_TOKEN)
sudo -E ./master_script

```

## Features

- Performance Evaluation Pipeline for Quantized LLMs
  - Automates benchmarking of multiple models with controlled CPU resource limits
  - Designed to test models under real-world constrained environments

- CPU Quota Testing (25%–1200%)
  - Uses `systemd-run` to cap CPU usage for each run
  - Managed through `master_script.sh`

- Model Compatibility
  - Supports a variety of GGUF models, including:
    - Gemma 3 (1b, 4b, 12b, 27b)
    - LLaMA 3.1 (8b)
    - LLaMA 3.2 (1b, 3b)
    - DeepSeek R1 Distill (7b)
    - Mistral 7b
    - Qwen3 4b
  - Easy to modify and extend in `25q_llama_cpp.sh`

- Output Logging and Parsing
  - Captures and filters key metrics
  - Parsed output saved to timestamped files
  - Implemented in `1parsed.py`

- Modular and Scriptable
  - Shell and Python components are clearly separated and easily configurable
  - Easy to add new models, adjust CPU quotas, or change logging behavior

## Contact
Adam Alvarado - alvaad4@furman.edu\
Rick King - kingri8@furman.edu
