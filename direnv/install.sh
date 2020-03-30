#!/usr/bin/env bash
cd "$(dirname "$0")/.."
source script/include

info 'installing direnv'
# If on Mac, check if direnv is already
brew install direnv
success '  installed direnv for you'

exit 0
