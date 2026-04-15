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
