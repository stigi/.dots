#!/usr/bin/env bash
source "$(dirname "$0")/../script/include"

info 'installing NixOS (unencrypted nix store)'

curl -L https://nixos.org/nix/install | sh -s -- --darwin-use-unencrypted-nix-store-volume
