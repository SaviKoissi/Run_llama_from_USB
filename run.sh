#!/bin/bash

cd "$(dirname "$0")"

./main -m models/qwen3-4b-thinking-2507.Q4_K_M.gguf \
  -p "Hello" \
  -n 512
  
  #.llamafile.dmg --server --model qwen3-4b-thinking-2507.Q4_K_M.gguf
