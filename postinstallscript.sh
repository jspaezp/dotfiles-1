#!/bin/sh

#this code pretends to isntall all my commonly used programs
#starts with Manjaro

sudo rm -f /var/lib/pacman/db.lck
sudo pacman-mirrors -g
sudo pacman -Syyuu  --noconfirm
sudo pacman -Suu --noconfirm

# Core stuff

sudo pacman -S --noconfirm --needed base base-devel
sudo pacman -S --noconfirm --needed mlocate #provides updatedb and locate
sudo pacman -S --noconfirm --needed tree # fancy way to view file trees in terminal
sudo pacman -S --noconfirm --needed imagewriter # image writer  ... 
# sudo pacman -S --noconfirm --needed octopi #graphic updating and installer tool for pacman
# sudo pacman -S --noconfirm --needed gpointing-device-settings #gui for touchpad synaptics config

## Programming/markdown  languages n development

sudo pacman -S --noconfirm --needed xfce4-terminal
sudo pacman -S --noconfirm --needed jdk8-openjdk
sudo pacman -S --noconfirm --needed r gcc-fortran-multilib
sudo pacman -S --noconfirm --needed js js17 jq
sudo pacman -S --noconfirm --needed python-pip python python2
yaourt -S --noconfirm --needed python-pywapi
sudo pacman -S --noconfirm --needed pandoc-citeproc pandoc-crossref
# sudo pacman -S --noconfirm --needed texmaker texlive-most
# sudo pacman -S --noconfirm --needed virtualbox
sudo pacman -S --noconfirm --needed zsh zsh-completions zsh-syntax-highlighting
sudo pacman -S --noconfirm --needed gitg
sudo pacman -S --noconfirm --needed docker

## Text editors

sudo pacman -S --noconfirm --needed vim neovim

## WM/DE

### Session manager
# sudo pacman -S --noconfirm --needed lightdm-gtk-greeter

### i3
sudo pacman -S --noconfirm --needed i3-manjaro i3-gaps dmenu-manjaro arandr \
	i3status-manjaro i3-scrot i3lock lxappearance rofi
sudo pacman -S --noconfirm --needed nitrogen # wallpaper manager ..
yaourt -S --noconfirm --needed i3blocks-gaps-git # 
3 blocks for i3 gaps

### TLI
sudo pacman -S --noconfirm --needed ranger # file manager
sudo pacman -S --noconfirm --needed moc # music player
sudo pacman -S --noconfirm --needed bmenu # terminal system menu
sudo pacman -S --noconfirm --needed pacli # pacman interface
sudo pacman -S --noconfirm --needed ncdu # baobab equivalent
sudo pacman -S --noconfirm --needed speedtest-cli # internet speed tester

## Social Networking and internet

sudo pacman -S --noconfirm --needed firefox thunderbird
sudo pacman -S --noconfirm --needed youtube-dl clipgrab tuxguitar
sudo pacman -S --noconfirm --needed skype-call-recorder skype

## Misc

sudo pacman -S --noconfirm --needed lm_sensors #  sensors appclication ...
sudo pacman -S --noconfirm --needed acpi #  sensors appclication ...
sudo sensors-detect --auto # autodetect sensors  ...
sudo pacman -S --noconfirm --needed redshift # changes screen colour tone with surroudings
sudo pacman -S --noconfirm --needed unison # similar to rsync but bidirectional
sudo pacman -S --noconfirm --needed pymol
sudo pacman -S --noconfirm --needed playonlinux
sudo pacman -S --noconfirm --needed baobab # graphical visualizer of disk usage
sudo pacman -S --noconfirm --needed imagewriter
sudo pacman -S --noconfirm --needed freemind
sudo pacman -S --noconfirm --needed mupdf mupdf-tools # really fast pdf reader
sudo pacman -S --noconfirm --needed gnuplot
sudo pacman -S --noconfirm --needed aspell aspell-de aspell-en aspell-es # Spell Checking
tudo pacman -S --noconfirm --needed npm
sudo npm install -g reveal-md # holly shit this thing is amazing, really ...

### AUR

# Programming Languages and IDE
# this section most certainly will take a lot of time

yaourt -S --noconfirm --needed rstudio-desktop-bin

## UNCOMMENT IF CONSIDERED NECESSARY
#yaourt -S --noconfirm --needed rstudio-server-git
#yaourt -S --noconfirm --needed anaconda
# Fixes a bug where spyder would not run
#sudo conda install -cy asmeurer pango

# Browsers and internet

yaourt -S --noconfirm --needed google-chrome
yaourt -S --noconfirm --needed n1 #this email client is amazing ....

# Text editors

yaourt -S --noconfirm --needed sublime-text-dev
yaourt -S --noconfirm --needed ttf-font-awesome # awesome font, used in i3bar

# Misc

yaourt -S --noconfirm --needed spotify
yaourt -S --noconfirm --needed fslint # duplicate file finder
yaourt -S --noconfirm --needed skypetab-ng-git # adds tabs to skype for linux
yaourt -S --noconfirm --needed google-talkplugin
#yaourt -S --noconfirm --needed teamviewer
#sudo systemctl enable teamviewerd

# R packages

#requirement FOR RJAVA …
# This section is required sometimes for some reason ...
#sudo cat JAVA_HOME="/usr/lib/jvm/java-8-oracle/jre" >> /etc/environment
#source /etc/environment
#echo $JAVA_HOME

sudo R CMD javareconf

mkdir ~/R_libs
export R_LIBS="~/R_libs"
Rscript R_packages.R

#dotfiles and config files


#Final Configs

## Replace alsa with pulseaudio (manjaro-i3 specific)

if hash install_pulse 2>/dev/null; then
	install_pulse
else
	echo "no install pulse found"
fi

## Adding OMF

sudo pacman -S --noconfirm --needed fish wmctrl xsel powerline powerline-fonts \
     powerline-common task # budspencer fishtheme dependencies
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish
fish -c "omf install budspencer"
fish -c "set -U budspencer_nogreeting"
fish -c "set budspencer_pwdstyle long"
fish -c "set budspencer_colors 000000 083743 445659 fdf6e3 2e8b57 cb4b16 dc121f af005f 6c71c4 268bd2 2aa198 859900"

## Adding oh my zsh

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

## Adding Spacemacs

rm -rf ~/.emacs.d
sudo pacman -S --noconfirm --needed emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

## Adding atom

yaourt -S --noconfirm --needed atom-editor
source ./atom_packages.sh

## Adding other dotfiles

source ./bootstrap.sh

git config --global user.email jspaezp@unal.edu.co
git config --global user.name jspaezp

## Extras

echo  "manually install virtualbox-host modules (kernell dependent ...)" 
echo  "mendeleydesktop is  better built from source"

# TODO possible mouse synaptics ....
# TODO backup atom config files
