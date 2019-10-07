#!/bin/sh

info 'installing zplug'
# If on Mac, check for Homebrew
if [ "$(uname -s)" == "Darwin" ] && test ! $(which zplug)
then
  echo "  Installing Zplug for you."
  brew install zplug
fi

exit 0
