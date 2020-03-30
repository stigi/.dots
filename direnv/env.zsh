#!/usr/bin/env bash
cd "$(dirname "$0")/.."
source script/include

if which direnv &> /dev/null; then
  export DIRENV_LOG_FORMAT=
  eval "$(direnv hook $SHELL)"
fi