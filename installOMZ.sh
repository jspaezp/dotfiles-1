#!/bin/sh

## Adding oh my zsh

sudo pacman -S --noconfirm --needed zsh zsh-completions zsh-syntax-highlighting
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# ... i know not exactly zsh but it makes sense to have it here
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
