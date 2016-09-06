# https://wiki.gentoo.org/wiki/Zsh/HOWTO
# https://wiki.archlinux.org/index.php/Zsh#Simple_.zshrc

#completions
#auto-complete 3rd party bins
if [[ -d /usr/local/share/zsh-completions ]]
then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi

autoload -U compinit promptinit

#enable funky tab completion
compinit -u -d "$HOME/.zcompdump"

#cache completions
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# enable menu style completion
zstyle ':completion:*' menu select

# beautify completion style
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# load more prompts
promptinit

# set default prompt to walters theme
prompt walters

RPROMPT=''

# add git prompt
# https://github.com/quintonparker/pure
if [[ -d ~/.zsh/pure ]]
then
    source ~/.zsh/pure/prompt.zsh
fi

# set emacs as default key bindings
# vim = bindkey -v
bindkey -e

# allow cd'ing to dirs without the cd cmd
# for example /etc instead of cd /etc
setopt autocd

# enable extended globbing queries such as cp ^*.(tar|bz2|gz) .
setopt extendedglob

# don't store history for cmds that begin with whitespace
# see http://zsh.sourceforge.net/Guide/zshguide02.html#l18
HISTFILE=$HOME/.zhistory
HISTSIZE=SAVEHIST=99999
setopt HIST_IGNORE_DUPS # don't store new cmd if same as prev
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS # don't show dupes in rev searches
setopt HIST_IGNORE_SPACE # used for cmds i don't want stored in history
setopt INC_APPEND_HISTORY # append every single command to $HISTFILE immediately after hitting ENTER
# setopt SHARE_HISTORY # intelligently share history between shells
setopt HIST_VERIFY # don't automagically run a substituted hist cmd
setopt EXTENDED_HISTORY # This makes the format of the history entry more complicated: in addition to just the command, it saves the time when the command was started and how long it ran for.

# setup zsh help
if [[ -d /usr/local/share/zsh/helpfiles ]]
then
    unalias run-help
    autoload run-help
    HELPDIR=/usr/local/share/zsh/helpfiles
fi

# START remember recently visited folders
DIRSTACKFILE="$HOME/.cache/zsh/dirs"
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
  dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
  [[ -d $dirstack[1] ]] && cd $dirstack[1]
fi
chpwd() {
  print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
}

DIRSTACKSIZE=20

setopt AUTO_PUSHD PUSHD_SILENT PUSHD_TO_HOME

## Remove duplicate entries
setopt PUSHD_IGNORE_DUPS

## This reverts the +/- operators.
setopt PUSHD_MINUS

# END remember recently visited folders

# bin aliases
source $HOME/.aliases
source $HOME/lib/git

. $HOME/.npm-completion
