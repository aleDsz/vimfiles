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

# Build YCM
cd bundle/YouCompleteMe
./install.py --clang-completer --tern-completer --gocode-completer --omnisharp-completer
cd ../..

