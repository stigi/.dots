#!/usr/bin/env bash
source "$(dirname "$0")/../script/include"

info 'installing mise'
curl https://mise.run | sh

~/.local/bin/mise use -g usage