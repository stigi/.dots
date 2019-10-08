#!/bin/sh

info 'installing z jump'
# If on Mac, check if z is already
if [ "$(uname -s)" == "Darwin" ] && test ! $(which z)
then
  echo "  Installing z for you."
  brew install z
fi

exit 0
