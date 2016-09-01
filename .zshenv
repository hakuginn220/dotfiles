# homebrew
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# anyenv
if [ -d $HOME/.anyenv ] ; then
  export PATH="$HOME/.anyenv/bin:$PATH"
fi

# go
if [ -x "`which go`" ] ; then
  export GOPATH="$HOME/go"
  export PATH="$PATH:$GOPATH/bin"
fi
