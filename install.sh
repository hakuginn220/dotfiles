#!/bin/sh

# install homebrew
echo "check: homebrew"
if [ ! -x "`which brew`" ] ; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
  brew upgrade
  brew install git openssl fish tmux tig go python lua
  brew install vim --with-lua
  brew cleanup
  brew doctor
  exec $SHELL -l
fi

# install anyenv
echo "check: anyenv"
if [ ! -d ~/.anyenv ] ; then
  git clone https://github.com/riywo/anyenv ~/.anyenv
  exec $SHELL -l
fi

echo "check: anyenv update"
if [ ! -x "`which anyenv update`" ] ; then
  mkdir -p $(anyenv root)/plugins
  git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
  exec $SHELL -l
fi

echo "check: ndenv"
if [ ! -x "`which ndenv`" ] ; then
  anyenv install ndenv
  exec $SHELL -l
fi

echo "check: rbenv"
if [ ! -x "`which rbenv`" ] ; then
  anyenv install rbenv
  exec $SHELL -l
fi

# install vim-plug
echo "check: vim-plug"
if [ ! -d ~/.vim ] ; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
