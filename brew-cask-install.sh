#!/bin/bash

## Applications
apps=(
  appcleaner
  intellij-idea
  visual-studio-code
  google-japanese-ime
  iterm2
  java
  java8
  firefoxdeveloperedition
)
#  atom
#  boostnote
#  alfred
#  docker
#  jdownloader

brew cask install ${apps[@]}

brew tap caskroom/versions
brew cask install google-chrome-canary

brew cask cleanup
brew cask list
