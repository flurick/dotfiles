mkdir -p "$HOME/.sh/"
PATH+=":$HOME/.sh/"
export VISUAL=vim
export EDITOR=vim

i(){
  sudo apt-get install
}

u(){
  su -c"
  apt-get update && 
  apt-get upgrade &&
  apt-get autoremove &&
  apt-get clean
";}
