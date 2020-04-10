autoload -U compinit
compinit

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

PROMPT='[%n@%m]# '
RPROMPT='[%d]'

# go
export GOPATH=$HOME/go

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# node
eval "$(nodenv init -)"
