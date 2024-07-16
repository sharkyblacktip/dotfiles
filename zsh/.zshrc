export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gnzh"
zstyle ':omz:update' mode reminder  

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"
