#!/usr/bin/env bash
source "$(dirname "$0")/../script/include"

info 'installing zplug'
# If on Mac, check for Homebrew
if [ "$(uname -s)" == "Darwin" ] && test ! $(which zplug)
then
  info "  Installing zplug for you."
  brew install zplug
  success "  Installed zplug"
fi

exit 0
