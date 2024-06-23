backup:
	brew list > brew.txt
	git config --get-regexp '^alias\.' > git/alias.txt

stow:
	stow --verbose --adopt --restow --target=$$HOME/ */

unstow:
	stow --verbose --target=$$HOME --delete */

# credit
# https://venthur.de/2021-12-19-managing-dotfiles-with-stow.html
