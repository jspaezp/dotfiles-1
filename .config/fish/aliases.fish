# Navigation aliases

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ']'='xdg-open' #double click equivalent

# Shortcuts
alias d="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Document"
alias g="cd ~/git"
alias ec="emacsclient"

# command argument inclusion
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB

# i3 specific

alias con='nano $HOME/.i3/config'
alias comp='nano $HOME/.config/compton.conf'

# Manjaro specific

alias fixit='sudo rm -f /var/lib/pacman/db.lck ; sudo pacman-mirrors -g ; sudo pacman -Syyuu  ; sudo pacman -Suu'
alias np='nano PKGBUILD'
alias update='yaourt -Syua'
alias inst='sudo pacman -S'
alias mirrors='sudo pacman-mirrors -g'
alias db='sudo pacman -Syy'
alias printer='system-config-printer'

# Rsync aliases

alias rsync-copy="rsync -avz --progress -h"
alias rsync-move="rsync -avz --progress -h --remove-source-files"
alias rsync-update="rsync -avzu --progress -h"
alias rsync-synchronize="rsync -avzu --delete --progress -h"

#Show progress while file is copying

# Rsync options are:
#  -p - preserve permissions
#  -o - preserve owner
#  -g - preserve group
#  -h - output in human-readable format
#  --progress - display progress
#  -b - instead of just overwriting an existing file, save the original
#  --backup-dir=/tmp/rsync - move backup copies to "/tmp/rsync"
#  -e /dev/null - only work on local files
#  -- - everything after this is an argument, even if it looks like an option

alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"

# Shell Functions
# qfind - used to quickly find files that contain a string in a directory
function qfind 
	find . -exec grep -l -s $1 {} \;
	return 0
end

# Enable aliases to be sudo’ed
alias sudo='sudo '
