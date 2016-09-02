#!/bin/sh

# neobundle
if [ ! -d ~/.vim ] ; then
  curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > ~/install.sh
fi

if [ -e ~/install.sh ]; then
  sh ~/install.sh
  rm ~/install.sh
fi
