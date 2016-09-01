# anyenv
if [ -f $HOME/.anyenv/bin/anyenv ] ; then
  eval "$(anyenv init - zsh)"
fi

# 操作設定
bindkey -v
autoload -U compinit; compinit
setopt auto_cd
setopt pushd_ignore_dups
setopt print_eight_bit