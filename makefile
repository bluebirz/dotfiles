backup:
		brew list > brew/brew.txt

stow:
		stow --verbose --target=$$HOME/ tmux --adopt
		stow --verbose --target=$$HOME/ alacritty --adopt
	  stow --verbose --target=$$HOME/ nvim --adopt

zsh:
		stow --verbose --target=$$HOME/ zsh --adopt

# credit
# https://venthur.de/2021-12-19-managing-dotfiles-with-stow.html
