stow:
	@stow --verbose --adopt --restow --target=$$HOME/ .

unstow:
	@stow --verbose --target=$$HOME --delete .

install-plugins:
	@sh ~/.local/share/nvim/lazy/markdown-preview.nvim/app/install.sh

clear-cache-all:
	@rm -rf $$HOME/.local/share/nvim
	@$(MAKE) clear-cache
	
clear-cache:
	@rm -rf $$HOME/.local/state/nvim/shada/
	@rm -rf $$HOME/.local/state/nvim/swap/
