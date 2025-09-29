#!/bin/bash


# My Coding Utilities.
alias getusers="cut -d: -f1 /etc/passwd"
alias python="python3"
alias vim="nvim"
alias rf="ruff format"

# Docker:
alias dcb='docker compose build'
alias dcu='docker compose up'
alias dcd='docker compose down'
alias dck='docker compose kill'
# Stop all containers:
alias dsac='docker stop $(docker ps -a -q)'
# Remove all containers:
alias drac='docker rm $(docker ps -a -q)'
# Remove all images:
alias dip='docker image prune -a'
# Remove all volumes:
alias dvp='docker volume prune -a'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'


# My listings
# List only directories:
alias ldir='ls -d */'
# List only files
alias lf='ls -lah | grep -v '^d''

# My functions:
# Prints all PATH directories in nicer format
function ppath {
    echo -e "${PATH//:/'\n'}"
}

# Quick password generator utility.
function genpswd {
if [[ $# -eq 1 ]]; then
python3 << END
import string
import random

print("".join([random.choice(string.punctuation + string.ascii_letters) for x in range(${1})]))
END
else
echo 'Enter one number that indicates the length of the expected password!'
fi
}

# Update packages
function suu {
sudo apt update -y && sudo apt full-upgrade -y
if [[ -f /var/run/reboot-required ]]; then
    reboot
fi
}

# Create directory and go into it.
function mkd {
    mkdir -p "$@"
    cd "$@" || exit
}

# Extract archive.
function ex {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1                  ;;
            *.tar.gz)    tar xvzf $1                  ;;
            *.bz2)       bunzip2 $1                   ;;
            *.rar)       unrar x $1                   ;;
            *.gz)        gunzip $1                    ;;
            *.tar)       tar xvf $1                   ;;
            *.tbz2)      tar xvjf $1                  ;;
            *.tgz)       tar xvzf $1                  ;;
            *.zip)       unzip $1                     ;;
            *.Z)         uncompress $1                ;;
            *.7z)        7z x $1                      ;;
            *)           echo "can't extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}
