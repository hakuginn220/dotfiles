#!/bin/sh

# symlink
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zshenv ~/.zshenv
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.vimrc ~/.vimrc

# install homebrew
if [ ! -x "`which brew`" ] ; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
  brew upgrade
  brew install git openssl zsh tig tmux wget cloc tree go lua heroku
  brew install vim --with-lua
  brew cleanup
  brew doctor
  exec $SHELL -l
fi

# install anyenv
if [ ! -d ~/.anyenv ] ; then
  git clone https://github.com/riywo/anyenv ~/.anyenv
  exec $SHELL -l
fi

if [ ! -x "`which anyenv update`" ] ; then
  mkdir -p $(anyenv root)/plugins
  git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
  exec $SHELL -l
fi

if [ ! -x "`which ndenv`" ] ; then
  anyenv install ndenv
  exec $SHELL -l
fi

if [ ! -x "`which rbenv`" ] ; then
  anyenv install rbenv
  exec $SHELL -l
fi

# install vim-plug
if [ ! -d ~/.vim ] ; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
