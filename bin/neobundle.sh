#!/bin/sh

# neobundle
if [ ! -d ~/.vim ] ; then
  curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > ~/install.sh
  sh ~/install.sh
fi
