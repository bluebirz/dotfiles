backup:
		brew list > brew/brew.txt
		git config --get-regexp '^alias\.' > git/alias.txt

stow:
		stow --verbose --adopt --restow --target=$$HOME/ tmux
		stow --verbose --adopt --restow --target=$$HOME/ alacritty
	  stow --verbose --adopt --restow --target=$$HOME/ nvim

zsh:
		stow --verbose --adopt --restow --target=$$HOME/ zsh

# credit
# https://venthur.de/2021-12-19-managing-dotfiles-with-stow.html
