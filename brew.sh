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
awscli
bash-git-prompt
cask-repair
chirp
git
git-secret
gpg-agent
heroku
hub
icu4c
mas
openssl
reattach-to-user-namespace
the_silver_searcher
tmux
trash
tree
watchman

# Remove outdated versions from the cellar.
brew cleanup
