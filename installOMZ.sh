#!/bin/sh

## Adding oh my zsh

sudo pacman -S --noconfirm --needed zsh zsh-completions zsh-syntax-highlighting
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
