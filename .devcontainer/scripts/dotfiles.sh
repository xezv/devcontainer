#!/usr/bin/env bash
set -euo pipefail
DOTFILES_DIR="${USER_HOME}/dotfiles"

git clone "${DOTFILES_REPO}" "${DOTFILES_DIR}"
chown -R "${USERNAME}:${USERNAME}" "${DOTFILES_DIR}"
# chmod +x "${DOTFILES_DIR}/${DOTFILES_SETUP_SH}"

# Add the dotfiles directory to the global safe directory list
# sudo -u "${USERNAME}" bash -c "git config --global --add safe.directory ${DOTFILES_DIR}"

# run the setup script
sudo -u "${USERNAME}" bash -c "${DOTFILES_DIR}/${DOTFILES_SETUP_SH}"
