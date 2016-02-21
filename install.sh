#!/bin/bash

set -e

# Make sure tmp dir exists
mkdir -p tmp

# Make sure we have all submodules
git submodule update --init --recursive

# Make sure Vundle is at head
cd bundle/Vundle.vim
git checkout master
cd ../..

# Install plugins
vim +PluginInstall +qall

# Install tern for vim
cd bundle/tern_for_vim
npm install
cd ../..

