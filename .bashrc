shopt -s histappend
shopt -s checkwinsize
# short prompt 
PS1='\W \$ '
#
. /etc/bash_completion
# use ~/bin for scripts
mkdir -p "$HOME/bin/"
PATH+=":$HOME/bin/"
# use vim
export VISUAL=vim
export EDITOR=vim
# pacman package manager like shortcuts
S(){
  sudo apt-get install "$@"
}

Ss(){
  apt-cache search "$@"
}

R(){
  sudo apt-get purge "$@"
}

ppa(){
  sudo add-apt-repository "$@"
  sudo apt-get update
}

Syu(){
  sudo apt-get update
  sudo apt-get upgrade
  sudo apt-get autoremove
  sudo apt-get clean
}

#disable wacom touch
xsetwacom set "$(xsetwacom --list | awk '/touch/ {print $8}')" touch off &>/dev/null
