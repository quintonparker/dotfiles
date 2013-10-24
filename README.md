dotfiles
========

This is mostly what's been accumulating in my OSX installs. I use the gnu stow tool to deploy. Usual install process is:

1. cd ~
2. git clone git@github.com:quintonparker/dotfiles.git
3. ~/dotfiles/scripts/bin/install-homebrew
3. cd dotfiles
4. stow -S zsh -S vim -S git -S ctags -S scripts
