#!/usr/bin/env bash
set -euo pipefail

# docs: https://www.lazyvim.org/installation

# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

git clone https://github.com/LazyVim/starter "${USER_HOME}/.config/nvim"
rm -rf "${USER_HOME}/.config/nvim/.git"
