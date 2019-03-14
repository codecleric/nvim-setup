# TLDR;

## Linux
    git clone https://bitbucket.org/codecleric/nvim-setup.git ~/.config/nvim
    
    cd ~/.config/nvim
    ./bootstap.sh

## windows (git bash)
    git clone https://bitbucket.org/codecleric/nvim-setup.git ~/vimfiles
    cp ~/vimfiles/init.vim ~/.vimrc
    # edit the .vimrc to change the path from .config/vim

## Both
    vim
    :PluginInstall

# What is this?

This will set up a bunch of nvim plugins and a complete zsh setup with zgen.

SO, it requires nvim, zsh, fortune, and python, if you want to run the
`bootstrap.sh`. On Windows, you just get a nice vim setup and you won't run the
`bootstrap.sh`.
