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

source $HOME/.bash_aliases
source $HOME/.bash_profile
source $HOME/.functions

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/anna/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/anna/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/anna/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/anna/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# config rbenv
eval "$(rbenv init - zsh)"

