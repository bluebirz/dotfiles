# backup:
	# brew list > brew.txt
	# git config --get-regexp '^alias\.' > git/alias.txt
	# cp $$HOME/.gitconfig ./

brew-install:
	cat brew/brew-$(type).txt | xargs brew install

brew-uninstall:
	cat brew/brew-$(type).txt | xargs brew uninstall

zsh:
	if test -f $$HOME/.zshrc ; then 
		echo "already have $$HOME/.zshrc" 
	else 
		chsh -s $(which zsh)
	fi
	echo $$SHELL
	$$SHELL --version
	
ohmyzsh:
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	sh install.sh

stow:
	stow --verbose --adopt --restow --target=$$HOME/ */

unstow:
	stow --verbose --target=$$HOME --delete */

clear-cache-nvim:
	rm -rf $$HOME/.local/share/nvim
	rm -rf $$HOME/.local/state/nvim/shada/
# credit
# https://venthur.de/2021-12-19-managing-dotfiles-with-stow.html
