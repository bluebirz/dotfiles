stow:
	@stow --verbose --adopt --restow --target=$$HOME/ .

unstow:
	@stow --verbose --target=$$HOME --delete .

plugins-install:
	@cd $$HOME/.config/yazi
	@ya pack -i
	@git clone https://github.com/saumyajyoti/omp.yazi.git $$HOME/.config/yazi/plugins/omp.yazi

plugins-upgrade:
	@ya pack -u

