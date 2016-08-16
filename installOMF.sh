#!/bin/sh

## Adding OMF

sudo pacman -S --noconfirm --needed fish wmctrl xsel powerline powerline-fonts \
     powerline-common task # budspencer fishtheme dependencies
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish
fish -c "omf install budspencer"
fish -c "set -U budspencer_nogreeting"
fish -c "set budspencer_pwdstyle long"
fish -c "set budspencer_colors 000000 083743 445659 fdf6e3 2e8b57 cb4b16 dc121f af005f 6c71c4 268bd2 2aa198 859900"
