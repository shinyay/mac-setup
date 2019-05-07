#!/bin/bash

## Applications
cask-apps=(
  appcleaner
  google-japanese-ime
  iterm2
)

brew cask install ${apps[@]}
