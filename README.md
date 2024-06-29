# Dotfiles

## [Alacritty](https://alacritty.org)

- install via homebrew or `make`
- in case of no process run:
  1. execute `sudo spctl --master-disable`
  1. launch Alacritty again
  1. execute `sudo spctl --master-enable`

[credit](https://blog.chaitanyashahare.com/posts/11-how-to-install-alacritty-on-macos-ventura/)

## git

- include `alias.toml` by adding this into `.gitconfig`

  ```toml
  [include]
    path = ~/.config/git/alias.toml
  ```

## [brew](https://brew.sh)

- install homebrew packages:

  ```shell
  cat brew.txt | xargs brew install
  ```

## [kitty](https://sw.kovidgoyal.net/kitty/)

- install via homebrew

## [nvim](https://neovim.io) (with [lazyvim](https://www.lazyvim.org))

- install via homebrew

## [oh-my-posh](https://ohmyposh.dev/)

- install via homebrew
- update prompt at <https://ohmyposh.dev/docs/installation/prompt>

  - zsh

  ```shell
  eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/zen.toml)"
  ```

  - do `source ~/.zshrc`
  - icons from <https://www.nerdfonts.com/cheat-sheet>

## [tmux](https://github.com/tmux/tmux/wiki)

- install via homebrew
- install [tpm](https://github.com/tmux-plugins/tpm)

## [zsh](https://ohmyz.sh)

- install via `curl`
- ~~using theme `refined`~~ using oh-my-posh theme in toml file.
- `source` aliases into the `.zshrc` by adding this row

  ```sh
  source ~/.zsh/alias.sh
  ```

## [makefile](https://makefiletutorial.com/)

- `backup` to create backup files
  - installed homebrew casks & formulas
  - git aliases
- `stow` to make symlinks for all folders
- `unstow` to delete all symlinks
