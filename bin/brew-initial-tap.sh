#!/bin/bash

## Applications
taps=(
  homebrew/cask
  homebrew/core
  homebrew/cask-versions
  pivotal/tap
  cloudfoundry/tap
  starkandwayne/cf
)

brew tap ${taps[@]}