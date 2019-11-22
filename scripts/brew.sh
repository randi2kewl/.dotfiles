#!/bin/bash

# This script is used to install Homebrew items for Mac OS
#
# To see others that I gathered inspiration from:
#  - https://gist.github.com/codeinthehole/26b37efa67041e1307db

echo "Checking for Homebrew..."

# See if Homebrew exists. If not, install it.
if test ! $(which brew); then
	echo "Installing Homebrew..."
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Always update homebrew recipes
echo "Updating Homebrew..."
brew update

echo "Cleaning up..."
brew cleanup

PACKAGES=(
	compser
	ctags
	ffmpeg
	findutils
	git
	htop
	markdown
	mas
	mercurial
	mysql
	neovim
	netcat
	nvm
	openssl
	python
	python3
	rename
	ssh-copy-id
	terminal-notifier
	tldr
	tmux
	wget
)

echo "Installing Hombrew packages"
brew install ${PACKAGES[@]}

echo "Installing cask..."
brew tap homebrew/cask-fonts 

CASKS=(
	dropbox
	firefox
	flux
	google-chrome
	gpgtools
	iterm2
	skype
	slack
	textual
	vagrant
	virtualbox
	visual-studio-code
)

echo "Installing cask apps..."
brew cask install ${CASKS[@]}

echo "Installing fonts..."
brew tap homebrew/cask-fonts 
FONTS=(
    font-roboto
)

brew cask install ${FONTS[@]}

echo "Installing Python packages..."
PYTHON_PACKAGES=(
    ipython
    virtualenv
    virtualenvwrapper
)
sudo pip install ${PYTHON_PACKAGES[@]}

echo "Installing Ruby gems"
RUBY_GEMS=(
    bundler
    filewatcher
    cocoapods
)
sudo gem install ${RUBY_GEMS[@]}

echo "Done install Homebrew and packages"
