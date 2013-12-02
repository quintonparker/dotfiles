#!/bin/sh

set -e

echo "Installing vim plugins"
cd ~/dotfiles
pwd

git submodule update --init --recursive

echo "Generating new help tags"
vim +Helptags +q
echo "Done"
