#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install homebrew packages
brew install grc coreutils spark
brew install git
brew install --HEAD hub

# Install Node and NPM
brew install node --without-npm
echo prefix=~/.npm-packages >> ~/.npmrc
curl -L https://www.npmjs.org/install.sh | sh

# Install Zsh from Brew, set as default shell
brew install zsh
cat /etc/shells | grep '/usr/local/bin/zsh'
if [ $? -eq 1 ]
  then
    echo '/usr/local/bin/zsh' >> /etc/shells
fi

# Install cask
brew install caskroom/cask/brew-cask

# Install cask packages
brew cask install alfred
brew cask install atom
brew cask install iterm2
brew cask install google-chrome
brew cask install emacs
brew cask install flux

exit 0
