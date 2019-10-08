#!/bin/sh

info 'installing pyenv'
# If on Mac, check if pyenv is already
if [ "$(uname -s)" == "Darwin" ] && test ! $(which pyenv)
then
  echo "  Installing pyenv for you."
  brew install pyenv
fi

exit 0
