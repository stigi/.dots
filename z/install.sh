#!/usr/bin/env bash
source "$(dirname "$0")/../script/include"

info 'installing z jump'
# If on Mac, check if z is already
if [ "$(uname -s)" == "Darwin" ] && test ! $(which z)
then
  info "  Installing z for you."
  brew install z
  success "  Installed z"
fi

exit 0
