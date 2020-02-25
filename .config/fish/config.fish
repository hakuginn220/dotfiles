# fish setting
set fish_greeting
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# go
set -x -U GOPATH $HOME/go

# rust
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths

# node
nodenv init - | source
