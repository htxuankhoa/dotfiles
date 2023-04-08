export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="false"
HIST_STAMPS="dd/mm/yyyy"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_aliases
source $HOME/.bash_profile
