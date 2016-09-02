#!/bin/sh

# homebrew
if [ ! -x "`which brew`" ] ; then
  exec /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  exec brew update
  exec brew upgrade
  exec brew install git
  exec brew install openssl zsh tig tmux
  exec brew install wget cloc tree
  exec brew install go lua
  exec brew install vim --with-lua
  exec $SHELL -l
  exec brew cleanup
  exec brew doctor
fi
