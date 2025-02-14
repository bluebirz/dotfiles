# [Yazi](https://yazi-rs.github.io/)

- install via homebrew
- also take action in nvim (at `./nvim/.config/nvim/lua/plugins/yazi.lua`),  
  take place of neotree (it's disabled at `./nvim/.config/nvim/lua/core/neotree.lua`)

## choices

1. If fresh installed, run `make` to install plugins, update init.lua for the plugins, and stow to config folder
1. If stow-ed, run `make plugins-upgrade` in case of upgrading and `make unstow` and `make stow` if needed.
