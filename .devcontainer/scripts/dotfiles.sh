#!/usr/bin/env bash
set -euo pipefail
DOTFILES_DIR="${USER_HOME}/dotfiles"

SETUP_PATH="${DOTFILES_DIR}/${DOTFILES_SETUP_SH}"

git clone ${DOTFILES_REPO} ${DOTFILES_DIR}
chmod +x ${SETUP_PATH}
# Add the dotfiles directory to the global safe directory list
sudo -u ${USERNAME} git config --global --add safe.directory ${DOTFILES_DIR}

sudo -u ${USERNAME} bash -c "${SETUP_PATH}"
