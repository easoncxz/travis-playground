#!/usr/bin/env bash

set -e  # fail fast
set -x  # echo on

uname -a
hostname
whoami
pwd

brew doctor || true
brew update || true
brew install --verbose haskell-stack
