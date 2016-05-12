#!/bin/zsh
export NVIM_PATH=${HOME}/.config/nvim
export ENVSUPPORT_PATH=${HOME}/.config/nvim/envsupport

# Fetch zgen for zsh package management
git clone https://github.com/tarjoilija/zgen.git ${HOME}/.zgen


# Fetch dein for neovim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh installer.sh  ~/.config/nvim/dein
rm installer.sh

# Install supporting RC files
zsh $NVIM_PATH/envsupport/bootstrap.sh

# Install zgen packages
source "${HOME}/.zshrc"
/bin/true
