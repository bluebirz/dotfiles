backup:
	# brew list > brew.txt
	# git config --get-regexp '^alias\.' > git/alias.txt
	cp $$HOME/.gitconfig ./

stow:
	stow --verbose --adopt --restow --target=$$HOME/ */

unstow:
	stow --verbose --target=$$HOME --delete */

clear-nvim:
	rm -rf $$HOME/.local/share/nvim
	rm -rf $$HOME/.local/state/nvim/shada/
# credit
# https://venthur.de/2021-12-19-managing-dotfiles-with-stow.html
