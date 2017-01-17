#!/bin/sh
#
# Homebrew

info 'installing homebrew'
# If on Mac, check for Homebrew
if [ "$(uname -s)" == "Darwin" ] && test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

exit 0
