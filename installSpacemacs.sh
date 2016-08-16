#!/bin/sh

## Adding Spacemacs

rm -rf ~/.emacs.d
sudo pacman -S --noconfirm --needed emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
