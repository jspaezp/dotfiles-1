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
# sudo pacman -S --noconfirm --needed octopi #graphic updating and installer tool for pacman
# sudo pacman -S --noconfirm --needed gpointing-device-settings #gui for touchpad synaptics config

## Programming/markdown  languages n development

sudo pacman -S --noconfirm --needed xfce4-terminal
sudo pacman -S --noconfirm --needed jdk8-openjdk
sudo pacman -S --noconfirm --needed r gcc-fortran
sudo pacman -S --noconfirm --needed js js17
sudo pacman -S --noconfirm --needed python-pip python python2
sudo pacman -S --noconfirm --needed pandoc-citeproc pandoc-crossref
# sudo pacman -S --noconfirm --needed texmaker texlive-most
sudo pacman -S --noconfirm --needed virtualbox
sudo pacman -S --noconfirm --needed zsh zsh-completions
sudo pacman -S --noconfirm --needed gitg
sudo pacman -S --noconfirm --needed docker

## Text editors

sudo pacman -S --noconfirm --needed vim neovim

## WM/DE

### Session manager
lightdm-gtk-greeter

### i3 
sudo pacman -S --noconfirm --needed i3-manjaro i3-gaps dmenu-manjaro arandr \
	i3status-manjaro i3-scrot i3lock lxappearance
sudo pacman -S --noconfirm --needed nitrogen # wallpaper manager ..

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

sudo pacman -S --noconfirm --needed pymol
sudo pacman -S --noconfirm --needed playonlinux
<<<<<<< HEAD
=======
sudo pacman -S --noconfirm --needed ranger w3w # terminal interface file manager
>>>>>>> devel
sudo pacman -S --noconfirm --needed baobab # graphical visualizer of disk usage
sudo pacman -S --noconfirm --needed imagewriter
sudo pacman -S --noconfirm --needed freemind
sudo pacman -S --noconfirm --needed mupdf mupdf-tools # really fast pdf reader
sudo pacman -S --noconfirm --needed gnuplot 
sudo pacman -S --noconfirm --needed aspell aspell-de aspell-en aspell-es # Spell Checking

### AUR

# Programming Languages and IDE
# this section most certainly will take a lot of time

yaourt -S --noconfirm --needed rstudio-desktop-bin 

## UNCOMMENT IF CONSIDERED NECESSARY
#yaourt -S --noconfirm --needed rstudio-server-git
#yaourt -S --noconfirm --needed anaconda 
# Fixes a bug where spyder would not run
#sudo conda install -cy asmeurer pango

# Browsers

# yaourt -S --noconfirm --needed google-chrome

# Text editors

yaourt -S --noconfirm --needed sublime-text-dev #atom-editor-bin

# Misc

yaourt -S --noconfirm --needed spotify
yaourt -S --noconfirm --needed fslint # duplicate file finder
yaourt -S --noconfirm --needed skypetab-ng-git # adds tabs to skype for linux
yaourt -S --noconfirm --needed google-talkplugin
#yaourt -S --noconfirm --needed teamviewer
#sudo systemctl enable teamviewerd 
# yaourt -S --noconfirm --needed cytoscape

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

git config --global user.name "jspaezp"

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

## Adding Spacemacs

rm -rf ~/.emacs.d
sudo pacman -S --noconfirm --needed emacs 
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

## Adding other dotfiles

source ./bootstrap.sh
chsh -s /usr/bin/fish

git config --global user.email jspaezp@unal.edu.co
git config --global user.name jspaezp

## Extras

echo  "manually install virtualbox-host modules"
echo  "mendeleydesktop is  better built from source"


# TODO backup zshrc, fish config,  
# TODO possible mouse synaptics ....


