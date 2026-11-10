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

## Layout

| Path | Content |
|---|---|
| `home/` | The chezmoi source state. `.chezmoiroot` points to this folder. |
| `home/dot_config/exact_zsh/` | The zsh components. `~/.zshrc` loads them from `~/.config/zsh`. |
| `home/.chezmoiignore` | The files that only a Pitch work machine gets. |
| `script/install-android.sh` | Optional Android setup. Run it manually. |

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
