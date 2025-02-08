# Dotfiles

## snapshot @ 2025-02-03

<img src="./_img/Screenshot 2568-02-03 at 10.46.41 AM.png" title="snapshot">

## Current setup

- `brew`: package manager
- `ghostty`: terminal emulator
- `nvim`: text editor
- `zsh`: a unix shell
- `oh-my-zsh`: a framework for `zsh`
- `oh-my-posh`: prompt theme on top of `zsh`
- `tmux`: terminal multiplexer for workspaces

## [Alacritty](https://alacritty.org)

- install via homebrew
- in case of no process run:
  1. execute `sudo spctl --master-disable`
  1. launch Alacritty again
  1. execute `sudo spctl --master-enable`

> [!NOTE]
> Prefer `ghostty` instead.

[credit](https://blog.chaitanyashahare.com/posts/11-how-to-install-alacritty-on-macos-ventura/)

## [amethyst](https://github.com/ianyh/Amethyst)

- install via homebrew

> [!NOTE]
> Prefer Window tiling from MacOS Sequioa.
>
## [brew](https://brew.sh)

- install/uninstall homebrew packages, referring `brew/brew-*.txt`:

  ```shell
  make brew-install type=[personal|work]
  make brew-uninstall type=[personal|work]
  ```

## [ghostty](https://ghostty.org/)

- install via homebrew

## git

- include `alias.toml` by adding this into `.gitconfig`

  ```toml
  [include]
    path = ~/.config/git/alias.toml
  ```

## [kitty](https://sw.kovidgoyal.net/kitty/)

- install via homebrew

> [!NOTE]
> Prefer `ghostty` instead.

## [lazygit](https://github.com/jesseduffield/lazygit)

- install via homebrew
- also install nvim plugin of this.

## [nvim](https://neovim.io) (with [lazyvim](https://www.lazyvim.org))

- install via homebrew

## [sketchybar](https://github.com/FelixKratz/SketchyBar)

- install via homebrew
- use makefile
- hide menubar in "setting > control center"

> [!NOTE]
> not in-used, pending for fix after updating MacOS Sequioa.

## [oh-my-zsh](https://ohmyz.sh)

- install via curl

## [oh-my-posh](https://ohmyposh.dev/)

-
- install via homebrew
- update prompt at <https://ohmyposh.dev/docs/installation/prompt>

  - zsh (a part of `zsh/.zsh/addons.sh` )

  ```shell
  eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/zen.toml)"
  ```

  - do `source ~/.zshrc`
  - icons from <https://www.nerdfonts.com/cheat-sheet>

## [tmux](https://github.com/tmux/tmux/wiki)

- install via homebrew
- install [tpm](https://github.com/tmux-plugins/tpm)

## [wezterm](https://wezterm.org/)

- install via homebrew

!> [!NOTE]
> Experimental. Prefer `ghostty`.

## [zsh](https://ohmyz.sh)

- install via `curl` or `make zsh`
- ~~using theme `refined`~~ using oh-my-posh theme in toml file.
- `source` shell aliases into the `.zshrc` by adding this row

  ```sh
  source ~/.zsh/alias.sh
  source ~/.zsh/addons.sh
  ```

## [Yazi](https://yazi-rs.github.io/)

- install via homebrew
- also take action in nvim (at `./nvim/.config/nvim/lua/plugins/yazi.lua`), take place of neotree (it's disabled at `./nvim/.config/nvim/lua/core/neotree.lua`)

## [makefile](https://makefiletutorial.com/)

- `brew-install` to install packages via homebrew
- `brew-uninstall` to uninstall packages
- `zsh` to install `zsh`
- `sketchybar-init` to install and start sketchybar service
- `sketchybar-restart` to restart sketchybar service
- `ohmyzsh` to install `oh-my-zsh`
- `stow` to make symlinks for all folders
- `unstow` to delete all symlinks
- `clear-cache-nvim` to delete all nvim cache (use after remove nvim)
