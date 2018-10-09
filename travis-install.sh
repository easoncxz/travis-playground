#!/usr/bin/env bash --login

set -e  # fail fast
set -x  # echo on

# Bring Homebrew up to date, ...
#brew doctor || true
#brew update || true

# ... so that we can install GnuPG, ...
#brew install gnupg || brew upgrade gnupg || which gpg
#echo 'Expecting we have GnuPG v2.x'
#gpg --version
#gpg --keyserver hkp://pgp.mit.edu --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
#
## ... so that we can verify the new RVM binary when we download it, ...
rvm get stable

# ... so that we can have a version of Ruby that works with homebrew_automation, ...
# rvm osx-ssl-certs update all    # https://github.com/rubygems/rubygems.org/issues/613
rvm install "$(cat .ruby-version)"
rvm use  "$(cat .ruby-version)"


which -a ruby
which -a gem
ruby --version
gem --version

gem install homebrew_automation -v 0.0.8

brew doctor || true
brew update || true
