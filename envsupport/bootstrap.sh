#!/usr/bin/env python/bin/zsh
if [[ -n $ENVSUPPORT_PATH ]]; then
    pushd $HOME

    echo "Installing symlinks from '$HOME' to '$ENVSUPPORT_PATH'"

    ln -fs $ENVSUPPORT_PATH/dot.zshrc .zshrc
    ln -fs $ENVSUPPORT_PATH/dot.tmux.conf .tmux.conf
    # USED for non-public keys #ln -fs $SUPPORT_PATH/zshenv .zshenv

    ln -fs $ENVSUPPORT_PATH/dot.vimrc .vimrc
    ln -fs $ENVSUPPORT_PATH/dot.gvimrc .gvimrc

    ln -fs $ENVSUPPORT_PATH/dot.hgrc .hgrc
    ln -fs $ENVSUPPORT_PATH/dot.hgignore_shared .hgignore_shared

    ln -fs $ENVSUPPORT_PATH/dot.gitrc .gitrc
    ln -fs $ENVSUPPORT_PATH/dot.gitignore_shared .gitignore_shared

    ln -fs $ENVSUPPORT_PATH/dot.npmrc .npmrc

    popd
    fi
