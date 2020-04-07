# docker
alias dps='docker ps -a --format="table {{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.Image}}"'

# git
alias gs="git status -b"
alias gss="git status -sb"
alias gb='git br -vv --sort=committerdate'
alias gp="git pull"
alias gd='git diff -w --color | less -r'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias nah="git reset --hard && git clean -df && git pull && git remote prune origin"

# laravel
alias art="php artisan"
alias cdump="composer dumpauto"
alias lm="php artisan migrate"
alias lmf="php artisan migrate:refresh"

# mobile
alias simulators_ios="xcrun simctl list devices"
alias simulators_android="emulator -list-avds"
alias android_tools="cd ~/Library/Android/sdk/platform-tools"

# system
alias ~="cd ~ && clear"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'
alias aliases="vim ~/.bash_aliases && source ~/.bash_aliases"
alias zshrc="vim ~/.zshrc"
alias cat="bat"
alias c='clear'
alias l="ls -lah | grep '^d' && ls -lah | grep '^-' && ls -lah | grep '^l'"
alias dev="cd ~/dev && clear"
alias grep='grep --color=auto'
alias print_path='echo $PATH | tr -s ":" "\n"'
alias edit_path="vim ~/.bash_profile && source ~/.bash_profile"
alias hosts="sudo vim /etc/hosts"
alias localip="ipconfig getifaddr en0"
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias weather='curl -s wttr.in/ho_chi_minh'
alias week='date +%V'
alias copy='rsync -avv --stats --human-readable --itemize-changes --progress --partial'
alias sort_launchpad="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"

# :)
[[ -f $HOME/dotfiles/local/.bash_aliases ]] && source $HOME/dotfiles/local/.bash_aliases
