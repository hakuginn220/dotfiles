#!/bin/sh

# anyenv
if [ ! -d ~/.anyenv ] ; then
  git clone https://github.com/riywo/anyenv ~/.anyenv
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
