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
bash-git-prompt
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

brew install 1password
brew install alfred
brew install backblaze
brew install dash
brew install discord
brew install docker
brew install firefox-developer-edition
brew install google-chrome
brew install graphql-playground
brew install iterm2
brew install keybase
brew install ngrok
brew install plexamp
brew install private-internet-access
brew install slack-beta
brew install sonos
brew install spectacle
brew install visual-studio-code-insiders

mas install 451907568
mas install 1191449274
mas install 409201541
mas install 1055511498
mas install 409203825



# Remove outdated versions from the cellar.
brew cleanup
