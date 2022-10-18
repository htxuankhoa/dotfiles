export PATH=$HOME/bin:/usr/local/bin:~/.composer/vendor/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"
HIST_STAMPS="dd/mm/yyyy"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH
export STARSHIP_CONFIG=~/dotfiles/starship.toml

source $HOME/.bash_aliases
source $HOME/.bash_profile
source $HOME/.functions

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# https://starship.rs/
eval "$(starship init zsh)"
