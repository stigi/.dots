if [[ -e  "$HOME/.nix-profile/etc/profile.d/nix.sh" ]]; then
. $HOME/.nix-profile/etc/profile.d/nix.sh
export NIXPKGS_ALLOW_UNFREE=1
fi
