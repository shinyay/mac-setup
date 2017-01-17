#!/bin/bash

## Applications
apps=(
  atom
  iterm2
  boostnote
)

brew cask install ${apps[@]}
brew cask cleanup
brew cask list
