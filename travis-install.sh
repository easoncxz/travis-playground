#!/usr/bin/env bash

set -e  # fail fast
set -x  # echo on

uname -a
hostname
whoami
pwd

which -a ruby
which -a gem
ruby --version
gem --version

brew doctor || true
brew update || true
