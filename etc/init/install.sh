#!/bin/sh

# homebrew
if [ ! -x "`which brew`" ] ; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle

# vim-plug
if [ ! -e ~/.vim/autoload/plug.vim ] ; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
