#pip3 install --pre torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/nightly/cpu
#pip3 install transformers
#pip3 install huggingface_hub
from huggingface_hub import hf_hub_download
from transformers import AutoTokenizer, AutoModelForCausalLM, pipeline

HUGGING_FACE_API_KEY = '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'

huggingface_model = "TinyLlama/TinyLlama-1.1B-Chat-v1.0"

required_files = [
    "special_tokens_map.json",
    "generation_config.json",
    "tokenizer_config.json",
    "model.safetensors",
    "eval_results.json",
    "tokenizer.model",
    "tokenizer.json",
    "config.json"
]

for filename in required_files:
    download_location = hf_hub_download(
    repo_id = huggingface_model,
    filename = filename,
    token = HUGGING_FACE_API_KEY

)
print(f"File downloaded to: {download_location}")

model = AutoModelForCausalLM.from_pretrained(huggingface_model)
tokenizer = AutoTokenizer.from_pretrained(huggingface_model)



text_generation_pipeline = pipeline(
    "text-generation",
    model = model,
    tokenizer = tokenizer,
    max_length = 1000
)

response = text_generation_pipeline("Is pooping hard?")

print(response)