# Dotfiles

## snapshot @ 2025-10-18

<img src="./_img/Screenshot 2568-10-18 at 20.41.57.png" alt="snapshot">

## Current setup

- `atuin`: shell history module
- `brew`: package manager
- `devbox`: isolate development environment
- `direnv`: environment variables loader
- `eza`: a modern alternative to ls
- `fastfetch`: neofetch like system information tool
- `ghostty`: terminal emulator
- `lazydocker`: the lazier way to manage everything docker
- `lazygit`: simple terminal UI for git commands
- `nvim`: text editor
- `oh-my-posh`: prompt theme on top of `zsh`
- `oh-my-zsh`: a framework for `zsh`
- `Rectangle`: macos windows tiling
- `tmux`: terminal multiplexer for workspaces
- `yazi`: terminal file manager
- `zsh`: a unix shell

## [makefile](https://makefiletutorial.com/)

- `brew-install` to install packages via homebrew with param `type=personal|work`.
- `sketchybar-init` to install and start sketchybar service.
- `sketchybar-restart` to restart sketchybar service.
- `sketchybar-stop` to stop sketchybar service.
- `stow` to make symlinks for all folders.
- `unstow` to delete all symlinks.
- `clear-cache-nvim` to delete all nvim cache (use after remove nvim).
