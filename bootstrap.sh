#!/bin/zsh
export NVIM_PATH=${HOME}/.config/nvim
export VIM_PATH=${HOME}/.config/nvim
export ENVSUPPORT_PATH=${HOME}/.config/nvim/envsupport
#
# Install required packages
source /etc/os-release

echo "Installing various packages to support this config... you will be asked to sudo"
if test "$ID" = 'ubuntu'; then
    sudo apt-get install -y zsh git fortune tmux at sox libsox-fmt-all pipx curl universal-ctags
elif test "$ID" = 'centos'; then
    sudo yum install -y zsh git tmux at pipx curl ctags
elif test "$ID" = 'nixos'; then
    nix-env -iA nixos.fortune nixos.at nixos.sox nixos.python310Packages.pipx nixos.curl nixos.universal-ctags
fi

# Fetch oh-my-zsh
if test "$ID" = 'nixos'; then
    cp -v $(nix-env -q --out-path oh-my-zsh | cut -d' ' -f3)/share/oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
else
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Fetch zgen for zsh package management
git clone https://github.com/tarjoilija/zgen.git ${HOME}/.zgen


# Fetch Vundle for vim/neovim
git clone https://github.com/VundleVim/Vundle.vim.git $NVIM_PATH/bundle/Vundle.vim


# Install supporting RC files
zsh $NVIM_PATH/envsupport/bootstrap.sh


# Install zgen packages
source "${HOME}/.zshrc"

# Install Custom Theme
export THEME_PATH="${HOME}/.zgen/robbyrussell/oh-my-zsh-master/custom/themes"
mkdir -p $THEME_PATH
cp $NVIM_PATH/envsupport/zsh/themes/brian.zsh-theme $THEME_PATH/$USER.zsh-theme
/bin/true
