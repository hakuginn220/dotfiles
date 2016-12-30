# homebrew
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# go
export GOPATH="$HOME/go"

# fish
if type fish >/dev/null 2>&1; then
  exec fish
fi
