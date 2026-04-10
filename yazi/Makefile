.PHONY: plugins-install update-init-lua stow 

stow:
	@stow --verbose --adopt --restow --dotfiles --target=$$HOME/ .

unstow:
	@stow --verbose --dotfiles --target=$$HOME --delete .

plugins-install:
	@cd ./dot-config/yazi
	@ya pkg install
	@git clone https://github.com/saumyajyoti/omp.yazi.git $$HOME/.config/yazi/plugins/omp.yazi

plugins-upgrade:
	@ya pkg upgrade

update-init-lua:
	@cp ./dot-config/yazi/init.lua.bak ./dot-config/yazi/init.lua
