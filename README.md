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

This will set up a bunch of **nvim** plugins and a complete **zsh** setup with **zgen**.
This works with both **vim** and **nvim** - the `bootstrap.sh` will set up the proper
links.  There are some conditionals in the `init.vim` file to deal with the
difference between **vim** and **nvim**.

SO, it requires **nvim**, **zsh**, **fortune**, and **python**, if you want to run the
`bootstrap.sh`. On Windows, you just get a nice **vim** setup and you won't run the
`bootstrap.sh`.

Please note, this is my personal **vim**/**nvim** setup so there are a bunch of
aliases that you won't want or care about :)
