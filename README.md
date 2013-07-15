dotfiles
========

file='.bashrc'
cp "${HOME}/${file}" "/tmp/.bashrc";
wget https://rawgithub.com/flurick/dotfiles/master/.bashrc -O "${HOME}/${file}"
