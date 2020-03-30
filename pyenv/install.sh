#!/usr/bin/env bash
cd "$(dirname "$0")/.."
source script/include

info 'installing pyenv'
# If on Mac, check if pyenv is already
if [ "$(uname -s)" == "Darwin" ] && test ! $(which pyenv)
then
  info "  Installing pyenv for you."
  brew install pyenv
  success "  Installed pyenv"
fi

exit 0
