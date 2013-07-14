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

u(){
  sudo apt-get update 
  sudo apt-get upgrade
  sudo apt-get autoremove
  sudo apt-get clean
}
