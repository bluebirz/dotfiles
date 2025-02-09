# Dotfiles

## snapshot @ 2025-02-03

<img src="./_img/Screenshot 2568-02-03 at 10.46.41 AM.png" title="snapshot">

## Current setup

- `brew`: package manager
- `ghostty`: terminal emulator
- `lazygit`: git console
- `nvim`: text editor
- `oh-my-posh`: prompt theme on top of `zsh`
- `oh-my-zsh`: a framework for `zsh`
- `tmux`: terminal multiplexer for workspaces
- `zsh`: a unix shell

## [makefile](https://makefiletutorial.com/)

- `brew-install` to install packages via homebrew with param `type=personal|work`.
- `sketchybar-init` to install and start sketchybar service.
- `sketchybar-restart` to restart sketchybar service.
- `sketchybar-stop` to stop sketchybar service.
- `stow` to make symlinks for all folders.
- `unstow` to delete all symlinks.
- `clear-cache-nvim` to delete all nvim cache (use after remove nvim).
