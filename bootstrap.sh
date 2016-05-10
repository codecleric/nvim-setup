#!/bin/zsh
export NVIM_PATH=${HOME}/.config/nvim
export ENVSUPPORT_PATH=${HOME}/.vim/envsupport

# Fetch zgen for zsh package management
git clone https://github.com/tarjoilija/zgen.git ${HOME}/.zgen

# Install supporting RC files
zsh $NVIM_PATH/support/bootstrap.sh

# Install zgen packages
source "${HOME}/.zshrc"
/bin/true
