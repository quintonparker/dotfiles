#!/bin/sh

echo "Installing/Updating fluid apps"

if [ -d ~/Applications/fluid ]
then
    cd ~/Applications/fluid
    git stash
    git sync
    git stash pop
else
    mkdir -vp ~/Applications
    pwd
    cd ~/Applications
    git clone git@github.com:quintonparker/fluid.git fluid
fi

echo "Done"
