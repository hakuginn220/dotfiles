# homebrew settings
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
