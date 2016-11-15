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
  exec /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  exec brew update
  exec brew upgrade
  exec brew install git
  exec brew install openssl zsh tig tmux
  exec brew install wget cloc tree
  exec brew install go lua
  exec brew install vim --with-lua
  exec brew install heroku
  exec $SHELL -l
  exec brew cleanup
  exec brew doctor
fi

# install anyenv
if [ ! -d ~/.anyenv ] ; then
  git clone https://github.com/riywo/anyenv ~/.anyenv
  exec $SHELL -l
fi

if [ ! -x "`which ndenv`" ] ; then
  exec anyenv install ndenv
  exec $SHELL -l
fi

if [ ! -x "`which rbenv`" ] ; then
  exec anyenv install rbenv
  exec $SHELL -l
fi

# install vim-plug
if [ ! -d ~/.vim ] ; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
