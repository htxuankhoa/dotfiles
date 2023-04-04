#!/bin/bash

if [ "$(uname)" == 'Darwin' ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    brew update && brew upgrade

    brew install automake coreutils moreutils findutils bash-completion zsh-completions pkg-config
    brew install bat wget git xclip vim
    brew install python@3 node gradle imagemagick ffmpeg

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

# install Vundle (Vim plug-in manager)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
