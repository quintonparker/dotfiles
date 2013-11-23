#!/bin/zsh

echo "Nuking zsh cache.."
rm -f -v "$HOME/.zcompdump" "$HOME/.zcompdump.zwc"
rm -f -v -r "$HOME/.zsh/cache/*"
echo "Rebuilding zsh cache..."
autoload -U compinit
compinit -u -d "$HOME/.zcompdump"
zcompile "$HOME/.zshrc"
zcompile "$HOME/.zcompdump"
