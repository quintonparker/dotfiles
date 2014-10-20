#!/bin/sh

set -e

echo "Installing homebrew"

if test ! $(which brew)
then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Already installed at" `which brew`
fi

echo "Done"
