#!/bin/bash

# homebrew
if [ ! -x "`which brew`" ] ; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle

# anyenv
if [ ! -x "`which anyenv`" ] ; then
  git clone https://github.com/riywo/anyenv ~/.anyenv
fi

if [ ! -x "`which anyenv update`" ] ; then
  mkdir -p ~/.anyenv/plugins
  git clone https://github.com/znz/anyenv-update.git ~/.anyenv/plugins/anyenv-update
fi

# vim-plug
if [ ! -e ~/.vim/autoload/plug.vim ] ; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
