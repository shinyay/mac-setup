#!/bin/bash

## Applications
apps=(
  keepingyouawake
  slack
  google-cloud-sdk
)

brew cask install ${apps[@]}
brew cask cleanup
brew cask list
