# Local LLaMA / Qwen Setup (USB-ready)

This repository provides a minimal setup to run a local LLM using 
[`llama.cpp`](https://github.com/ggerganov/llama.cpp) with a Qwen model.

The goal is to enable **portable, offline inference** (e.g., from a USB drive).

---

## 📁 Project Structure

```bash
llama/
├── build/                 # Compiled binaries (llama-cli)
├── models/                # GGUF models
├── run.sh                 # Quick launch script
└── README.md
```

## ⚙️ Installation

###1. Clone the repository

```bash
git clone https://github.com/ggerganov/llama.cpp
cd llama.cpp
```

## 2. Build the project (CMake)

```bash
mkdir build
cd build
cmake ..
cmake --build . --config Release
```
or
or

```bash
brew install cmake
```

## 🤖 Model Download

Download the Qwen model (GGUF format), for example:

Qwen3 4B Thinking (quantized):

👉 https://huggingface.co

 (search: qwen3-4b-thinking-2507.Q4_K_M.gguf)

Place the model in:

```bash
models/
```

## 🚀 Running the Model

### Option 1 — Direct CLI

```bash
./build/bin/llama-cli -m models/qwen3-4b-thinking-2507.Q4_K_M.gguf
```

### Option 2 — With prompt

```bash
./build/bin/llama-cli \
  -m models/qwen3-4b-thinking-2507.Q4_K_M.gguf \
  -p "Hello" \
  -n 512
```

### Option 3 — Interactive mode

```bash
./build/bin/llama-cli \
  -m models/qwen3-4b-thinking-2507.Q4_K_M.gguf \
  --interactive
```

▶️ Using run.sh

Make script executable:

```bash
chmod +x run.sh
```

📚 References
llama.cpp: https://github.com/ggerganov/llama.cpp
GGUF models: https://huggingface.co
