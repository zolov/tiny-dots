export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

DISABLE_AUTO_TITLE="true"

# ENABLE_CORRECTION="true"

plugins=(
git
sudo
docker
zsh-syntax-highlighting
zsh-autosuggestions
fzf-zsh-plugin
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

export EDITOR="nvim"
export ARCHFLAGS="-arch $(uname -m)"

alias vim="nvim"
alias e="nvim"
alias zshrc="vim ~/.zshrc"
alias ll="ls -lFa"
alias ld="lazydocker"
alias lg="lazygit"
