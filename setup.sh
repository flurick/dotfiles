#!/bin/bash

sudo apt-get install vim tmux

for file in dotfiles-master/
do
  mv "$file" .old
done

cp dotfiles-master/ "$HOME"
