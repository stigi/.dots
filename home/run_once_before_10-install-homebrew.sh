#!/usr/bin/env bash
# Install Homebrew on a new Mac. chezmoi runs this script one time.
set -e

if [ "$(uname -s)" != "Darwin" ]; then exit 0; fi
if [ -x /opt/homebrew/bin/brew ] || [ -x /usr/local/bin/brew ]; then exit 0; fi

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
