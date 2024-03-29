# setup

Uses chezmoi to bootstrap my dotfiles

Most of it is ripped from [logandonley/dotfiles](https://github.com/logandonley/dotfiles).

Note:

- `./home` is the source directory for chezmoi
- You will need to enter your password throughout instead of at the beginning, as homebrew will complain if it is ran as root.
- Tasks might fail if they are already installed and are the latest version, there are checks but just read the fail message to see.
- If you are getting permission issues in the terminal, see if setting the terminal emulator with full disk access helps.
- Make sure to set the git `user.name` and `user.email`.

## Run

Run the one-liner in `$HOME` as it creates `./bin/chezmoi`

### Public repo

This expects a public `dotfiles` repo to exist in `$GITHUB_USERNAME`'s account

When running on mac, if git isn't installed, just run the one-liner and a system popup will ask for permission to install xcode tools. You will have to run the one-liner twice though. Or just install git.

```shell
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

```
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply dotzaki
```

## Fonts

Manually install fonts, haven't figured out how to do it in ansible without community mods.
Should be easy through macos fontbook.

## Improvements

Since I'm using chezmoi for dotfiles if I want to edit the file `~/.config/wezterm/wezterm.lua` then I'll have to `chezmoi add` the file.

Symlinks fix this as the changes are directly reflected into the source directory, but fish shell config files don't follow symlinks.

There is this weird in-between though from when I add `mode = "symlink"` in the config. The files aren't symlinked but any changes I make in the destination are reflected in the source.

This eventually ends though after some time and the files are actually symlinked and fish starts to complain that it can't find the config files.

The behaviour seems so random so I can't really be bothered to try and use it.

## TODO

- [ ] Add pnpm install  `curl -fsSL https://get.pnpm.io/install.sh | sh -`
- [ ] Add `fd` to brew packages install, needed for nvim setup.
- [ ] Setup macOS specific options so I don't have to manually do them.
