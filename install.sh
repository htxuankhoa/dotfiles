#!/bin/bash

if [ "$(uname)" == 'Darwin' ]; then

    # install Brew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

    brew update && brew upgrade

    brew install coreutils moreutils findutils
    brew install bash-completion
    brew install automake bat wget git node tree gradle hugo xclip vim
    brew install ideviceinstaller ios-deploy watchman pkg-config python@3
    brew install zsh zsh-completions imagemagick ffmpeg
    brew install fortune cowsay yarn
    brew cask install android-platform-tools
    brew cask install spectacle firefox

    brew cleanup
fi

# install composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
chmod +x /usr/local/bin/composer
composer global require phpunit/phpunit

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# symlink aliases
ln -s `pwd`/.bash_aliases $HOME/.bash_aliases
ln -s `pwd`/.functions $HOME/.functions
ln -s `pwd`/.vimrc $HOME/.vimrc
ln -s `pwd`/.zshrc $HOME/.zshrc
ln -s `pwd`/.gitignore_global $HOME/.gitignore_global

git config --global core.excludesfile ~/.gitignore_global
