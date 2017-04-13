#!/bin/bash

array=()
array+=(.bash_profile)
array+=(.bashrc)
array+=(.tmux.conf)
array+=(.vimrc)

for val in ${array[@]}; do
  ln -sfnv $HOME/dotfiles/${val} $HOME/${val}
done
