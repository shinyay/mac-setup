#!/bin/bash

## Applications
apps=(
  git
  fish
  wget
  fzf
  terraform
  jenv
  cf-cli
)

brew install ${apps[@]}

## brew tap
# cf-cli
# $ brew tap cloudfoundry/tap

#  pyenv
#  pandoc
