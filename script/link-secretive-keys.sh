#!/usr/bin/env bash
# Link the Secretive public keys into ~/.ssh/secretive with their key names.
# Secretive stores each public key as <hash>.pub. The configs need stable names,
# for example ~/.ssh/secretive/pitch-signing.pub.
# Run this script manually after you make or delete a key in Secretive.
source "$(dirname "$0")/include"

data_dir="$HOME/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data"
keys_dir="$data_dir/PublicKeys"
link_dir="$HOME/.ssh/secretive"

# The agent is the source of truth. Secretive can keep the .pub file of a deleted key.
if ! agent_keys="$(SSH_AUTH_SOCK="$data_dir/socket.ssh" ssh-add -L 2>/dev/null)"; then
  fail 'The Secretive agent has no keys. Open Secretive and make a key first.'
fi

mkdir -p "$link_dir"
chmod 700 "$HOME/.ssh" "$link_dir"

# Remove all links. The loop makes them again for the keys that the agent holds.
find "$link_dir" -type l -delete

for key in "$keys_dir"/*.pub; do
  [ -e "$key" ] || continue
  if ! grep -qF "$(cut -d ' ' -f 2 "$key")" <<<"$agent_keys"; then continue; fi
  # The default comment is "<key name>@secretive.<host name>". The link gets the key name.
  # A key can have a custom comment in Secretive. Then the link gets the comment as its name.
  comment="$(cut -d ' ' -f 3- "$key")"
  name="$(sed -E 's/[^A-Za-z0-9._@+-]+/-/g; s/-+/-/g; s/^-|-$//g' <<<"${comment%@secretive.*}")"
  ln -sf "$key" "$link_dir/$name.pub"
  success "Linked $name.pub"
done
