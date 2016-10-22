#!/bin/sh

## Adding Spacemacs

rm -rf ~/.emacs.d
sudo pacman -S --noconfirm --needed emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
cp -f /usr/share/emacs/site-lisp/org_contrib/scripts/ditaa.jar /home/sebastian/.emacs.d/elpa/contrib/scripts/ditaa.jar
