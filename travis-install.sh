#!/usr/bin/env bash --login

set -e  # fail fast
set -x  # echo on

uname -a
sw_vers -productVersion || echo 'Not sure'

brew --version
time brew doctor || true
time brew upgrade || true
brew --version

set +x  # RVM is really too noisy
function with_echo {
    echo "$*";
    # Crucially, without quotes:
    $*
}
with_echo rvm version
with_echo time rvm get stable
with_echo rvm version

with_echo rvm list
with_echo rvm disk-usage all

set -x

#with_echo cat .ruby-version
#with_echo rvm use "$(cat .ruby-version)" --install
#
#echo 'Uninstalling other Rubies...'
#other_rubies="$(comm -23 <(rvm list strings) <(cat .ruby-version))"
#echo "Other Rubies:"
#echo "$other_rubies"
#echo "$other_rubies" | xargs -n 1 rvm uninstall
#
#with_echo rvm cleanup all
#with_echo rvm list
#with_echo rvm disk-usage all
#set -x
#
#which -a ruby
#which -a gem
#ruby --version
#gem --version
#
#gem install homebrew_automation -v 0.0.8

# Install Stack binary
which -a stack || ( curl -sSL https://get.haskellstack.org/ | sh )
time stack --resolver 'lts-12.12' install hlint
du -h -d 3 ~/.stack
