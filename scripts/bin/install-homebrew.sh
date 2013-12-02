#!/bin/sh

set -e

echo "Installing homebrew"

if test ! $(which brew)
then
    ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
else
    echo "Already installed at" `which brew`
fi

echo "Done"
