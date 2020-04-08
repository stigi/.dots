#!/usr/bin/env bash
source "$(dirname "$0")/../script/include"

if which direnv &> /dev/null; then
  export DIRENV_LOG_FORMAT=
  eval "$(direnv hook $SHELL)"
fi