#!/bin/bash

# homebrew
if [ ! -x "`which brew`" ] ; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew bundle

# anyenv
if [ ! -x "`which anyenv`" ] ; then
  git clone https://github.com/riywo/anyenv ~/.anyenv
  exec $SHELL -l
fi
if [ ! -x "`which anyenv update`" ] ; then
  mkdir -p $(anyenv root)/plugins
  git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
  exec $SHELL -l
fi

# vim-plug
if [ ! -d ~/.vim ] ; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
