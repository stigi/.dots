#!/usr/bin/env bash
source "$(dirname "$0")/../script/include"

info 'installing diff-so-fancy'
brew install diff-so-fancy
success '  installed diff-so-fancy for you'

exit 0
