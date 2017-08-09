#!/usr/bin/env python/bin/zsh
if [[ -n $ENVSUPPORT_PATH ]]; then
    pushd $HOME

    echo "Installing symlinks from '$HOME' to '$ENVSUPPORT_PATH'"

    ln -fs $ENVSUPPORT_PATH/zsh/dot.zshrc .zshrc
    ln -fs $ENVSUPPORT_PATH/tmux/dot.tmux.conf .tmux.conf
    # USED for non-public keys #ln -fs $SUPPORT_PATH/zshenv .zshenv

    #ln -fs $ENVSUPPORT_PATH/dot.hgrc .hgrc
    #ln -fs $ENVSUPPORT_PATH/dot.hgignore_shared .hgignore_shared

    ln -fs $ENVSUPPORT_PATH/git/dot.gitconfig .gitconfig
    ln -fs $ENVSUPPORT_PATH/git/dot.gitignore_shared .gitignore_shared

    ln -fs $ENVSUPPORT_PATH/dot.npmrc .npmrc

    ln -fs $ENVSUPPORT_PATH/../init.vim .vimrc
    mkdir -p ~/.vim
    ln -fs ~/.config/nvim/bundle ~/.vim/bundle
    ln -fs ~/.config/nvim/plugin ~/.vim/plugin
    popd
    fi
