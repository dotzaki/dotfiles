# setup

Uses chezmoi to bootstrap my dotfiles

Most of it is ripped from [logandonley/dotfiles](https://github.com/logandonley/dotfiles).

Note: `./home` is the source directory for chezmoi

## Run

```shell
export $GITHUB_USERNAME=
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

## Fonts

Manually install fonts, haven't figured out how to do it in ansible without community mods.
Should be easy through macos fontbook.

