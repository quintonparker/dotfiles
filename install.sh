#!/bin/bash

set -e

echo "Installing dotfiles..."
pushd `dirname $0` >> /dev/null
DOTFILES_DIR=`pwd -P`

cd $DOTFILES_DIR
pwd

echo "Installing submodules..."
git submodule update --init --recursive

cd "$DOTFILES_DIR/scripts/bin/"
pwd

if [ `uname` == "Darwin" ]
then
    ./install-homebrew.sh
    ./install-homebrew-cask.sh
fi

echo "Installing gnu stow (dotfile deploy tool)..."

if [ `uname` == "Darwin" ]
then
    brew install stow
else
    sudo apt-get install stow
fi

echo "Symlinking in dot files..."
if [ `uname` == "Darwin" ]
then
    stow --ignore="\.DS_Store" -d $DOTFILES_DIR -t $HOME -v 1 -S zsh -S vim -S git -S ctags -S scripts -S screen
else
    stow -d $DOTFILES_DIR -t $HOME --verbose=1 zsh vim git ctags scripts screen
fi

cd "$DOTFILES_DIR/scripts/bin/"
pwd

if [ `uname` == "Darwin" ]
then
    ./install-homebrew-formulas.sh
    ./install-homebrew-cask-formulas.sh
    ./install-quick-look-plugins.sh
    ./install-monaco-font.sh
    ./osx-set-defaults.sh
    ./zsh-set-as-default.sh
else
    sudo apt-get install zsh
    sudo chsh -s `which zsh` $USER
fi

touch $HOME/.vimrc_local
./install-vim-plugins.sh

./zsh-cache-nuke.sh

echo "All done. You should restart your terminal for new shell to take effect!"
