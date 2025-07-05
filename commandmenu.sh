#!/bin/zsh

# NitroShell Fuzzy Command Menu by Mitri 🚀 (git fix version)

# Get all runnable commands from your $PATH
ALL_COMMANDS=$(echo $PATH | tr ':' '\n' | xargs -I {} find {} -maxdepth 1 -type$

# Show NitroShell menu
CMD=$(echo "$ALL_COMMANDS" | fzf --prompt="🔍 Nitro Command Menu > " --height=2$ 
# Run selected command
if [[ -n "$CMD" ]]; then
  echo "Running: $CMD"
  eval "$CMD"
else
  echo "Cancelled."
fi


