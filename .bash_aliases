# docker
alias dps='docker ps -a --format="table {{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.Image}}\t{{.Size}}"'

# git
alias gs="git status -b"
alias gb='git br -vv --sort=committerdate'
alias gp="git pull --prune"
alias gd='git diff -w --color | less -r'
alias wip="git commit -am 'wip'"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias nah="git reset --hard && git clean -df && git pull && git remote prune origin"
alias gg="git branch -vv | grep ': gone]'|  grep -v '\\*' | awk '{ print $1; }'"
alias ggd="git branch -vv | grep ': gone]'|  grep -v '\\*' | awk '{ print $1; }' | xargs -r git branch -d"
alias setup_git_account="git config user.name 'htxuankhoa' && git config user.email 'htxuankhoa@gmail.com'  && echo 'Done 🔥'"

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
alias sort_launchpad="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"
alias python="python3 "
alias enablegatekeeper='sudo spctl --master-enable'
alias disablegatekeeper='sudo spctl --master-disable'
alias gatekeeperstatus='spctl --status'
alias removeproxy="npm config --location=global rm proxy && npm config --location=global rm https-proxy && npm config list"
alias chromeextensions="cd Library/Application Support/Google/Chrome/Default/Extensions"
alias updatenodejs="sudo npm cache clean -f && sudo npm install -g n && sudo n stable && sudo npm install -g npm@latest && node -v && npm -v"
alias phpserver="php -S localhost:8000"
alias pythonvenv="python -m venv .venv"

# :)
[[ -f $HOME/dotfiles/local/.bash_aliases ]] && source $HOME/dotfiles/local/.bash_aliases
