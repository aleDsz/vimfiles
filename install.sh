#!/bin/bash

set -e


if which nvim; then
	VIM=nvim
fi

echo Building with $VIM

# Make sure tmp dir exists
mkdir -p tmp

# Make sure we have all submodules
git submodule update --init --recursive

# Make sure Vundle is at head
cd bundle/Vundle.vim
git checkout master
cd ../..

# Install plugins
$VIM +PluginInstall +qa
$VIM +UpdateRemotePlugins +qa

# Build Omnisharp
if which xbuild; then
	cd bundle/omnisharp-vim
	git submodule update --init --recursive
	cd server
	xbuild
	cd ../../..
else
	echo Not building Omnisharp
fi

