#!/bin/bash

## Applications
apps=(
  git
  fish
  peco
  curl
  cloudfoundry/tap/cf-cli
)

brew install ${apps[@]}

## brew tap
# cf-cli
# $ brew tap cloudfoundry/tap

#  wget
#  pyenv
#  pandoc
#  jenv
#  fzf
#  terraform
