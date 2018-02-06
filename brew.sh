#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi

# Install other useful binaries.
brew install awscli
brew install bash-git-prompt
brew install cask-repair
brew install chirp
brew install git
brew install git-secret
brew install gpg-agent
brew install heroku
brew install hub
brew install icu4c
brew install mas
brew install openssl
brew install reattach-to-user-namespace
brew install the_silver_searcher
brew install tmux
brew install trash
brew install tree
brew install watchman

brew cask install 1password
brew cask install alfred
brew cask install backblaze
brew cask install dash
brew cask install discord
brew cask install docker
brew cask install firefox-developer-edition
brew cask install google-chrome
brew cask install graphql-playground
brew cask install iterm2
brew cask install keybase
brew cask install ngrok
brew cask install plexamp
brew cask install private-internet-access
brew cask install slack-beta
brew cask install sonos
brew cask install spectacle
brew cask install visual-studio-code-insiders

mas install 451907568
mas install 1191449274
mas install 409201541
mas install 1055511498
mas install 409203825

# Remove outdated versions from the cellar.
brew cleanup
