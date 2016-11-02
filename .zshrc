# anyenv
if [ -f $HOME/.anyenv/bin/anyenv ] ; then
  eval "$(anyenv init - zsh)"
fi

# 画面設定
PROMPT='%m:%c %n$ '
RPROMPT='[%~]'

# システム設定
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY

# 操作設定
bindkey -v
autoload -U compinit; compinit
setopt correct
setopt auto_menu
setopt auto_cd
setopt auto_pushd
setopt auto_list
setopt auto_param_keys
setopt list_types
setopt pushd_ignore_dups
setopt print_eight_bit
setopt always_last_prompt
