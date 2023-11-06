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
    zgen oh-my-zsh plugins/asdf

    # github plugins
    zgen load lukechilds/zsh-nvm
    zgen load jocelynmallon/zshmarks

    # set up some conditionals
    #
    #
    case "$sys" in
        Darwin)
            zgen oh-my-zsh plugins/brew
            ;;
        Linux)
            #echo "problem with debian plugin"
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

export FPATH=$FPATH:~/.config/nvim/envsupport/zsh/functions
autoload -Uz fpy fif
set -o vi
setopt histreduceblanks
setopt no_share_history

# IF you need to make my local laptop keyboard have the 
# Super Key next to the SpaceBar - swap alt_win in this case
# Find out what the internal keyboard ID is with: xinput
# Put this in the ~/.zsh.local
#setxkbmap -option altwin:swap_alt_win -device 15

case "$sys" in
    Linux)
        setxkbmap -layout us -option ctrl:nocaps
        ;;
esac

## RIPGREP setup
export RIPGREP_CONFIG_PATH=$HOME/.config/nvim/envsupport/ripgrep/ripgreprc


custom_init_mega() {
  echo "This is a sample function "
  cd $PWD
}

if [ -d "$HOME/.local/bin" ] ; then
     PATH="$HOME/.local/bin:$PATH"
fi
if [ -d "$HOME/Apps" ] ; then
     PATH="$HOME/Apps:$PATH"
fi

export TERM=xterm-256color

[ -f /usr/bin/kubectl ] && source <(kubectl completion zsh)
[ -f /usr/bin/direnv ] && eval "$(direnv hook zsh)"

# If you replace $PROG with croc in /etc/zsh/zsh_autocomplete_croc, you don't need the follwing lines
#PROG=croc
#_CLI_ZSH_AUTOCOMPLETE_HACK=1
#source /etc/zsh/zsh_autocomplete_croc

# Commands to be executed before the prompt is displayed
# Save current working dir - new shells will start in the last dir
precmd() { pwd > "${HOME}/.cwd" }

# Change to saved working dir
[[ -f "${HOME}/.cwd" ]] && cd "$(< ${HOME}/.cwd)"

# Source local shell additions
[ -f ~/.zsh.local ] && source ~/.zsh.local



export TMPDIR=/tmp
if [ -e /home/brian/.nix-profile/etc/profile.d/nix.sh ]; then . /home/brian/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"
