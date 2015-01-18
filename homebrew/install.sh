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

brew update
brew doctor

# Install homebrew packages
brew install grc coreutils spark
brew install git
brew install --HEAD hub

# Install cask
brew install caskroom/cask/brew-cask

# Install cask packages
brew cask install alfred
brew cask install atom
brew cask install google-chrome 
brew cask install emacs
brew cask install flux

exit 0
