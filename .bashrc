# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# fish
if type fish >/dev/null 2>&1; then
  exec fish
fi
