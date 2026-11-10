#!/usr/bin/env bash
# Install the packages that these dotfiles use.
# chezmoi runs this script again each time its content changes.
set -e

if [ -x /opt/homebrew/bin/brew ]; then eval "$(/opt/homebrew/bin/brew shellenv)"; fi
if [ -x /usr/local/bin/brew ]; then eval "$(/usr/local/bin/brew shellenv)"; fi
if ! command -v brew >/dev/null 2>&1; then exit 0; fi

brew bundle --no-upgrade --file=- <<BREWFILE
brew "asdf"
brew "chezmoi"
brew "fzf"
brew "gawk"
brew "gh"
brew "git"
brew "git-absorb"
brew "git-interactive-rebase-tool"
brew "starship"
brew "tmux"
brew "z"
BREWFILE
