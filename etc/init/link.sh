#!/bin/sh

array=()
array+=(.tmux.conf)
array+=(.vimrc)

for value in ${array[@]}; do
  ln -sfnv $HOME/dotfiles/${value} $HOME/${value}
done
