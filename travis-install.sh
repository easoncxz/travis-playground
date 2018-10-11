#!/usr/bin/env bash --login

set -e  # fail fast
set -x  # echo on

uname -a
sw_vers -productVersion || echo 'Not sure'

brew --version
brew doctor || true
brew upgrade || true
brew --version

rvm version
rvm get stable
rvm version

cat .ruby-version
rvm use "$(cat .ruby-version)" --install
which -a ruby
which -a gem
ruby --version
gem --version

gem install homebrew_automation -v 0.0.8
