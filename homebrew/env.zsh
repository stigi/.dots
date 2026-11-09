if [ -f /opt/homebrew/bin/brew ]
then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [ -f /usr/local/bin/brew ]
then
  eval "$(/usr/local/bin/brew shellenv)"
fi

export HOMEBREW_NO_INSTALL_CLEANUP=1

if type brew &>/dev/null
then
  # compinit runs one time in zshrc, after all fpath changes
  typeset -U fpath FPATH
  FPATH="$HOMEBREW_PREFIX/share/zsh/site-functions:${FPATH}"
fi
