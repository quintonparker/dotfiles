#!/bin/sh
#
# Homebrew
#
# This install --verboses some of the common dependencies needed (or at least desired)
# using Homebrew.
# Stolen from zach holman
# https://github.com/holman/dotfiles/blob/master/homebrew/install --verbose.sh

echo "Installing homebrew formulas"

# Check for Homebrew
if test ! $(which brew)
then
  echo "  x You should probably install Homebrew first:"
  echo "    https://github.com/mxcl/homebrew/wiki/install"
  exit
fi

brew install ack
brew install curl
brew install ctags
brew install dos2unix
brew install git
brew install gnu-sed --with-default-names
brew install jq
brew install hub

brew install --with-override-system-vi vim
brew install --with-override-system-vi macvim

brew install php-cs-fixer

brew install pv
brew install siege
brew install stow
brew install terminal-notifier
brew install the_silver_searcher
brew install wget

# dont forget to follow brew post-install instructions. brew info zsh
brew install --disable-etcdir --with-pcre zsh
brew install zsh-completions

exit 0
