# To use zgen, you must do:
#      cd ~
#      git clone https://github.com/tarjoilija/zgen.git .zgen
#

# load zgen
source ~/.zgen/zgen.zsh

sys="`uname`"
user="${USER}"
# if the init script doesn't exist
if ! zgen saved; then
    zgen oh-my-zsh

    # theme
    themefile="/home/${USER}/.zgen/robbyrussell/oh-my-zsh-master/custom/themes/${USER}.zsh-theme"
    if [ -f ${themefile} ]; then
        echo "found custom themefile:", $themefile
        zgen oh-my-zsh custom/themes/${USER}
        export docker_short="local"
    else 
        echo "using bira theme"
        zgen oh-my-zsh themes/bira
    fi

    # plugins
    zgen oh-my-zsh plugins/vi-mode
    zgen oh-my-zsh plugins/history-substring-search
    zgen oh-my-zsh plugins/colored-man-pages
    zgen oh-my-zsh plugins/git 
    zgen oh-my-zsh plugins/docker 
    zgen oh-my-zsh plugins/docker-compose
    zgen oh-my-zsh plugins/python 
    zgen oh-my-zsh plugins/pip 
    zgen oh-my-zsh plugins/command-not-found 
    zgen oh-my-zsh plugins/chucknorris
    zgen oh-my-zsh plugins/web-search
    zgen oh-my-zsh plugins/tmux
    zgen oh-my-zsh plugins/vault
    zgen oh-my-zsh plugins/httpie
    zgen oh-my-zsh plugins/marked2
    zgen oh-my-zsh plugins/gitfast
    zgen oh-my-zsh plugins/git-extras
    zgen oh-my-zsh plugins/gitignore

    # github plugins
    zgen load Tarrasch/zsh-autoenv
    zgen load jocelynmallon/zshmarks
    ##TODO: error to fix## zgen load yonchu/vimman 

    # set up some conditionals
    #
    #
    case "$sys" in
        Darwin)
            zgen oh-my-zsh plugins/brew
            ;;
        Linux)
            zgen oh-my-zsh plugins/debian
            ;;
    esac
    
    # completions
    zgen load zsh-users/zsh-completions src
    #zgen load tarruda/zsh-autosuggestions

    # zsh-syntax-highlighting must be at the end
    zgen load zsh-users/zsh-syntax-highlighting

    # save all to init script
    zgen save
fi

source ~/.config/nvim/envsupport/zsh/aliasrc
source ~/.config/nvim/envsupport/zsh/develrc

[[ -a /usr/local/bin/task ]] && source ~/.config/nvim/envsupport/zsh/taskrc

set -o vi
setopt histreduceblanks
setopt no_share_history

case "$sys" in
    Linux)
        setxkbmap -layout us -option ctrl:nocaps
        ;;
esac

## AUTOENV setup and functions
export AUTOENV_COMMON_HOOKS=$HOME/.config/nvim/envsupport/zsh/autoenv

rbb_init_autoenv() {
    cat > $AUTOENV_FILE_ENTER <<EOF
## Source begin of enter common hook
source $AUTOENV_COMMON_HOOKS/autoenv-enter-begin.zsh

# Place customizations here

## Source end of enter common hook
source $AUTOENV_COMMON_HOOKS/autoenv-enter-end.zsh
EOF

    cat > $AUTOENV_FILE_LEAVE <<EOF
## Source begin of enter common hook
source $AUTOENV_COMMON_HOOKS/autoenv-leave-begin.zsh

# Place customizations here

## Source end of enter common hook
source $AUTOENV_COMMON_HOOKS/autoenv-leave-end.zsh
EOF
    _autoenv_authorize $AUTOENV_FILE_ENTER
    _autoenv_authorize $AUTOENV_FILE_LEAVE
}

rbb_init_mega() {
  echo "Initializing 'npm init' and 'pyvenv init' and 'autoenv' in this directory"
  npm init -y .
  pyvenv init .
  rbb_init_autoenv
  cd $PWD
}

[ -f ~/.zsh.local ] && source ~/.zsh.local
