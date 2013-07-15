shopt -s histappend
shopt -s checkwinsize
PS1='\W \$ '

. /etc/bash_completion

mkdir -p "$HOME/.sh/"
PATH+=":$HOME/.sh/"
export VISUAL=vim
export EDITOR=vim

i(){
  sudo apt-get install "$@"
}

s(){
  apt-cache search "$@"
}

p(){
  sudo apt-get purge "$@"
}

u(){
  sudo apt-get update 
  sudo apt-get upgrade
  sudo apt-get autoremove
  sudo apt-get clean
}

xsetwacom set "$(xsetwacom --list | awk '/touch/ {print $8}')" touch off &>/dev/null
