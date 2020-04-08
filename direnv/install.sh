#!/usr/bin/env bash
source "$(dirname "$0")/../script/include"

info 'installing direnv'
# If on Mac, check if direnv is already
brew install direnv
success '  installed direnv for you'

exit 0
