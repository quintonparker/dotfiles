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
  echo "  x You should probably install --verbose Homebrew first:"
  echo "    https://github.com/mxcl/homebrew/wiki/install --verboseation"
  exit
fi

brew install --verbose autoconf
brew install --verbose automake
brew install --verbose ctags
brew install --verbose curl-ca-bundle
brew install --verbose dos2unix
brew install --verbose fuse4x
brew install --verbose fuse4x-kext
brew install --verbose gdbm
brew install --verbose gettext
brew install --verbose --with-blk-sha1 --with-pcre --with-gettext --without-completions git
brew install --verbose gnu-sed
brew install --verbose jq
# workaround for hub completion bug https://github.com/github/hub/issues/231
brew install --verbose --HEAD hub
brew install --verbose libtool
brew install --verbose libyaml

brew install --verbose --override-system-vi vim
brew tap joelcogen/macvimsplitbrowser
brew install --verbose macvim-split-browser

brew install --verbose python
brew install --verbose pyenv-virtualenv

# these usually required for pip deps
brew install mysql --verbose --enable-local-infile --enable-memcached --with-archive-storage-engine --with-blackhole-storage-engine
# usually needed for python gevent
brew install libevent

brew install --verbose ncurses
brew install --verbose ntfs-3g
brew install --verbose openssl
brew install --verbose pcre
brew install --verbose pkg-config
brew install --verbose pv
brew install --verbose readline
brew install --verbose stow
brew install --verbose terminal-notifier
brew install --verbose the_silver_searcher
brew install --verbose tig
brew install --verbose watch
brew install --verbose wget
brew install --verbose xz
# dont forget to follow brew post-install --verbose instructions. brew info zsh
brew install --verbose --disable-etcdir zsh
brew install --verbose zsh-completions

exit 0
