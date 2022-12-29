#!/bin/bash

if [ "$(uname)" == 'Darwin' ]; then

    # install Brew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

    # install oh-my-zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    brew update && brew upgrade

    brew install coreutils
    brew install moreutils
    brew install findutils
    brew install bash-completion
    brew install automake
    brew install bat
    brew install wget
    brew install git
    brew install node
    brew install gradle
    brew install xclip
    brew install vim
    brew install neofetch
    brew install watchman
    brew install pkg-config
    brew install python@3
    brew install zsh
    brew install zsh-completions
    brew install tmux
    brew install tree
    brew install imagemagick
    brew install ffmpeg
    brew install yarn

    # brew install ideviceinstaller
    # brew install ios-deploy

    brew tap homebrew/cask

    # brew cask install android-platform-tools
    brew cask install firefox
    brew cask install iterm2

    brew cleanup
fi

# symlink aliases
ln -s `pwd`/.bash_aliases $HOME/.bash_aliases
ln -s `pwd`/.functions $HOME/.functions
ln -s `pwd`/.vimrc $HOME/.vimrc
ln -s `pwd`/.zshrc $HOME/.zshrc
ln -s `pwd`/.gitignore_global $HOME/.gitignore_global

# setup global git ignore rules
git config --global core.excludesfile ~/.gitignore_global

# install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
chmod +x /usr/local/bin/composer
composer global require phpunit/phpunit

# install Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install Vundle (Vim plug-in manager)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
