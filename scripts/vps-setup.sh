#!/usr/bin/env bash
set -euo pipefail

echo "=========================================="
echo "      Hermes Agent - VPS Bootstrap      "
echo "=========================================="

echo "[1/3] Updating system packages..."
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y git curl build-essential sqlite3 ripgrep

echo "[2/3] Installing Hermes Agent..."
# Native installer provisions isolated python/uv environment automatically
curl -fsSL https://hermes-agent.nousresearch.com/install.sh | bash

echo "[3/3] System Environment Checks..."
# Reload path in current script context
export PATH="$HOME/.local/bin:$PATH"

if command -v hermes &> /dev/null; then
    echo "SUCCESS: Hermes Agent installed correctly!"
    echo "Next steps:"
    echo "  1. Reload your shell: source ~/.bashrc"
    echo "  2. Configure your API key: hermes setup"
    echo "  3. Verify installation: hermes doctor"
else
    echo "WARNING: Installation completed, but 'hermes' command was not found in PATH."
    echo "Please reload your shell context with: source ~/.bashrc"
fi