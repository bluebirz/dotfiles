plugins-install:
	@ya pack -i
	@git clone https://github.com/saumyajyoti/omp.yazi.git ~/.config/yazi/plugins/omp.yazi

plugins-upgrade:
	@ya pack -u

stow:
	@stow --verbose --adopt --restow --target=$$HOME/ .

unstow:
	@stow --verbose --target=$$HOME --delete .
