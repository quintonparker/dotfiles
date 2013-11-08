#!/bin/sh

BREW_ZSH="/usr/local/bin/zsh"

if test ! -f $BREW_ZSH
then
    echo "Homebrew zsh not installed. First run ./install-homebrew-formulas"
    exit 1
fi

if [ $SHELL != $BREW_ZSH ]
then
    if [[ `cat /etc/shells | grep {$BREW_ZSH} | wc -l | sed -e 's, ,,g'` == "0" ]]
    then
        echo "Enter password to append $BREW_ZSH to /etc/shells"
        echo $BREW_ZSH | sudo tee -a /etc/shells
    fi

    echo ">> Make zsh the default shell? <C-c> to cancel"
    chsh -s $BREW_ZSH
fi
