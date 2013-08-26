export EDITOR=vim
export VIM_APP_DIR=/usr/local/Cellar/macvim-split-browser/20120109/

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

shopt -s cdspell

export CDPATH=$HOME/Sites/workspace:$HOME/Sites/workspace/repos

export COPYFILE_DISABLE=true

export PATH=$HOME/bin:/usr/local/bin/:$PATH

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWSTASHSTATE=1

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

eval "$(hub alias -s)"

source ~/bin/hub.bash_completion.sh

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
