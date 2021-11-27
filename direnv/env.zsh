#!/usr/bin/env bash
if [ -f $HOMEBREW_PREFIX/bin/direnv ]
then
  export DIRENV_LOG_FORMAT=
  eval "$($HOMEBREW_PREFIX/bin/direnv hook $SHELL)"
fi
