.PHONY: plugins-install update-init-lua stow 

stow:
	@stow --verbose --adopt --restow --dotfiles --target=$$HOME/ .

unstow:
	@stow --verbose --dotfiles --target=$$HOME --delete .

plugins-install:
	@cd ./.config/yazi
	@ya pack -i
	@git clone https://github.com/saumyajyoti/omp.yazi.git $$HOME/.config/yazi/plugins/omp.yazi

plugins-upgrade:
	@ya pack -u

update-init-lua:
	@cp ./.config/yazi/init.lua.bak ./.config/yazi/init.lua
