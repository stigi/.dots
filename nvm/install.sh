#!/usr/bin/env bash
cd "$(dirname "$0")/.."
source script/include

# If on Mac, check if nvm is already
info "  Installing nvm for you."
brew install nvm

exit 0
