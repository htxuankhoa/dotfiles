#!/bin/bash

if [ "$(uname)" == 'Darwin' ]; then
    brew update && brew upgrade

    brew install coreutils moreutils findutils
    brew install bash-completion
    brew install automake bat wget git node tree gradle hugo xclip vim
    brew install ideviceinstaller ios-deploy watchman pkg-config python@3
    brew install zsh zsh-completions imagemagick ffmpeg
    brew cask install android-platform-tools

    brew cleanup
fi

ln -s .bash_aliases $HOME/.bash_aliases
ln -s .functions $HOME/.functions
ln -s .vimrc $HOME/.vimrc
ln -s .zshrc $HOME/.zshrc

ln -s .gitignore_global $HOME/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
