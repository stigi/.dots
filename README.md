# .dots

My dotfiles for macOS and [zsh](https://www.zsh.org). [chezmoi](https://www.chezmoi.io) manages them.

## Installation

On a new Mac:

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply stigi/.dots
```

chezmoi asks for the git author name and email, and if the Mac is a Pitch work machine. Then it does these steps:

1. It installs [Homebrew](https://brew.sh) and the packages that the dotfiles use.
2. It writes the files into the home directory.
3. It installs the vim plugins.

## SSH keys

[Secretive](https://github.com/maxgoedjen/secretive) keeps the SSH keys in the Secure Enclave. chezmoi installs it. `~/.zshenv` sets `SSH_AUTH_SOCK` to the Secretive agent, thus `ssh` and git signatures use it.

A key cannot leave the Mac on which you made it. On a new Mac, do these steps:

1. Open Secretive and let it install its agent.
2. Make the keys. A Pitch work machine needs a key with the name `pitch-signing`, and a key with the comment `<work email> - Github` for the GitHub account for work.
3. Run `script/link-secretive-keys.sh`. It links each public key to `~/.ssh/secretive/<key name>.pub`. If a key has a custom comment in Secretive, the link gets the comment as its name.
4. Add the public keys to the hosts and to GitHub.

`~/.ssh/config` is not in this repository. For a host that uses a Secretive key, it has these lines:

```
IdentityAgent "~/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh"
IdentityFile ~/.ssh/secretive/<key name>.pub
IdentitiesOnly yes
```

## Layout

| Path | Content |
|---|---|
| `home/` | The chezmoi source state. `.chezmoiroot` points to this folder. |
| `home/dot_config/exact_zsh/` | The zsh components. `~/.zshrc` loads them from `~/.config/zsh`. |
| `home/.chezmoiignore` | The files that only a Pitch work machine gets. |
| `script/install-android.sh` | Optional Android setup. Run it manually. |
| `script/link-secretive-keys.sh` | Links the Secretive public keys into `~/.ssh/secretive`. Run it manually. |

The zsh components load in three steps:

1. `<topic>.env.zsh`: exports and `PATH` changes. `homebrew.env.zsh` loads first.
2. All other `*.zsh` files.
3. `<topic>.completion.zsh`: these load after `compinit`.

## Daily use

```sh
chezmoi edit ~/.zshrc   # edit the source file
chezmoi diff            # show what an apply changes
chezmoi apply           # write the changes into the home directory
chezmoi cd              # open a shell in the source repository
```

## Inspiration & Credits

The first version was based on [holman/dotfiles](https://github.com/holman/dotfiles/) and [robb/.dotfiles](https://github.com/robb/.dotfiles). Thanks!
