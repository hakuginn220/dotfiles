#!/bin/sh

array=()
array+=(.config/fish/config.fish)
array+=(.bash_profile)
array+=(.bashrc)
array+=(.tmux.conf)
array+=(.vimrc)
array+=(.zshrc)

for value in ${array[@]}; do
  ln -sfnv $HOME/dotfiles/${value} $HOME/${value}
done
