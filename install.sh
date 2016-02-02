#!/bin/bash

set -e

# Make sure tmp dir exists
mkdir -p tmp

# Install tern for vim
cd bundle/tern_for_vim
npm install
cd ../..

