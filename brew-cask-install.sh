#!/bin/bash

## Applications
apps=(
  atom
  iterm2
  boostnote
  alfred
  java
)

brew cask install ${apps[@]}

brew tap caskroom/versions
brew cask install google-chrome-canary

brew cask cleanup
brew cask list
