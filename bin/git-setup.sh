#!/bin/bash

git config --global user.name "shinyay"
git config --global user.email "shinya.com@gmail.com"
git config --global core.editor 'vim -c "set fenc=utf-8"'
git config --global merge.tool vimdiff
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global core.precomposeunicode true
git config --global core.quotepath false

git config --list
