# shopt complete list
# https://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html
shopt -s histappend #keep old history
shopt -s checkwinsize #update window size
shopt -s autocd #directory is executed as if cd was run
shopt -s cdspell #fix minor errors in the spelling of a directory
shopt -s dirspell #correction on directory names during word completion 
PROMPT_COMMAND="history -a" #save after every command
PS1='\W \$ ' # short prompt with only the current folder
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
