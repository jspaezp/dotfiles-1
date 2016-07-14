
#!/bin/sh

#this code pretends to isntall all my commonlly used programs
#starts with Manjaro

sudo rm -f /var/lib/pacman/db.lck && sudo pacman-mirrors -g && sudo pacman -Syyuu  --noconfirm && sudo pacman -Suu --noconfirm

### Core stuff

sudo pacman -S --noconfirm base base-devel
sudo pacman -S --noconfirm mlocate #provides updatedb and locate
sudo pacman -S --noconfirm octopi #graphic updating and installer tool for pacman
sudo pacman -S --noconfirm gpointing-device-settings #gui for touchpad synaptics config

## Programming/markdown  languages n development

sudo pacman -S --noconfirm xfce4-terminal
sudo pacman -S --noconfirm fish wmctrl xsel powerline powerline-fonts powerline-common task # budspencer theme dependencies
# sudo pacman -S --noconfirm js js17
sudo pacman -S --noconfirm jdk8-openjdk
sudo pacman -S --noconfirm gcc-fortran
sudo pacman -S --noconfirm r
sudo pacman -S --noconfirm python python2
sudo pacman -S --noconfirm python-pip
sudo pacman -S --noconfirm virtualbox
sudo pacman -S --noconfirm gummi texmaker texlive-most
sudo pacman -S --noconfirm pandoc
# sudo pacman -S --noconfirm pandoc-crossref # TODO check it it is redundant with the cabal install
# sudo pacman -S --noconfirm ghc cabal-install happy alex haddock # haskell plataform, for pandoc
# sudo pacman -S --noconfirm docker
sudo pacman -S --noconfirm zsh zsh-completions

## Text editors

sudo pacman -S --noconfirm gvim nvim
sudo pacman -S --noconfirm emacs 

## WM/DE

sudo pacman -S --noconfirm i3-manjaro i3-vcs
sudo pacman -S --noconfirm nitrogen # wallpaper manager ..
sudo pacman -S --noconfirm 


## Misc

sudo pacman -S --noconfirm gitg
sudo pacman -S --noconfirm thunderbird
sudo pacman -S --noconfirm ranger # terminal interface file manager
sudo pacman -S --noconfirm tree # fancy way to view file trees in terminal
sudo pacman -S --noconfirm playonlinux
sudo pacman -S --noconfirm baobab # graphical visualizer of disk usage
sudo pacman -S --noconfirm imagewriter
sudo pacman -S --noconfirm freemind
sudo pacman -S --noconfirm pymol
sudo pacman -S --noconfirm youtube-dl clipgrab tuxguitar
sudo pacman -S --noconfirm skype-call-recorder skype
sudo pacman -S --noconfirm mupdf mupdf-tools # really fast pdf reader
sudo pacman -S --noconfirm gnuplot 
sudo pacman -S --noconfirm aspell aspell-de aspell-en aspell-es # Spell Checking

### AUR

# Programming Languages and IDE
# this section most certainly will take a lot of time
yaourt -S --noconfirm rstudio-desktop-bin 

## UNCOMMENT IF CONSIDERED NECESSARY
#yaourt -S --noconfirm rstudio-server-git
#yaourt -S --noconfirm anaconda 
# Fixes a bug where spyder would not run
#sudo conda install -cy asmeurer pango

# Browsers

yaourt -S --noconfirm google-chrome

# Text editors

yaourt -S --noconfirm sublime-text-dev #atom-editor-bin

# Misc
#yaourt -S --noconfirm teamviewer
#sudo systemctl enable teamviewerd 
yaourt -S --noconfirm spotify
#yaourt -S --noconfirm mendeleydesktop # better built from source
# yaourt -S --noconfirm cytoscape
yaourt -S --noconfirm fslint # duplicate file finder
yaourt -S --noconfirm skypetab-ng-git # adds tabs to skype for linux
yaourt -S --noconfirm google-talkplugin

# R packages
#REQUIREMENT FOR RJAVA …

# This section is required sometimes for some reason ...
#sudo cat JAVA_HOME="/usr/lib/jvm/java-8-oracle/jre" >> /etc/environment
#source /etc/environment
#echo $JAVA_HOME

R CMD javareconf


R -e "install.packages(installed.packages[,1])" #reinstalls packages in home directory
R -e "source(‘https://bioconductor.org/biocLite.R’)"
R -e "biocLite(‘Mfuzz’)"
R -e "
    install.packages(c('dplyr',
    'ggplot2',
    'data.table',
    'tidyr',
    'reshape2',
    ‘plotly’,
    ‘rjava’,
    ‘shiny’,
    ‘miniUI’,
    ‘dplyr’,
    ‘randomForest’))"


#Pandoc “addons”
cabal update
cabal install pandoc-crossref

# Python packages

pip install ipython

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

curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install
fish -c "omf install budspencer"
fish -c "set -U budspencer_nogreeting"
fish -c "set budspencer_pwdstyle long"
## Adding Spacemacs

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

## Extras 

echo  “manually install virtualbox-host modules”

# TODO backup zshrc, fish config,  
# TODO possible mouse synaptics ....


