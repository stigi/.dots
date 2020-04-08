#!/usr/bin/env bash
source "$(dirname "$0")/../script/include"

#
# Homebrew

info 'installing homebrew'
# If on Mac, check for Homebrew
if [ "$(uname -s)" == "Darwin" ] && test ! $(which brew)
then
  info "  Installing Homebrew for you."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  success "  Installed Homebrew"
fi

exit 0
