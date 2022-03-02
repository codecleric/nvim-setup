# What is this?

This will set up a bunch of **nvim** plugins and a complete **zsh** setup with
**oh-my-zsh** and **zgen**.  This works with both **vim** and **nvim** - the
`make full-monte` will set up the proper links.  There are some conditionals in
the `init.vim` file to deal with the difference between **vim** and **nvim**.

SO, it requires **vim/nvim**, **zsh**, **fortune**, **cowsay** and **python**,
if you want to use the Makefile.  On Windows, you just get a nice **vim** setup
and you won't run the `Makefile`.

Please note, this is my personal **vim**/**nvim** setup so there are a bunch of
aliases that you won't want or care about :)

## Install on Linux
    git clone https://github.com/codecleric/nvim-setup.git ~/.config/nvim
    
    cd ~/.config/nvim
    make full-monte

    vim
    :PlugInstall

