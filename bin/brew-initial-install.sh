#!/bin/bash

## Applications
cask-apps=(
  appcleaner
  google-japanese-ime
  iterm2
)

apps=(
  git
)

brew cask install ${cask-apps[@]}
brew install ${apps[@]}