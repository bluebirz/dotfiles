# backup:
	# brew list > brew.txt
	# git config --get-regexp '^alias\.' > git/alias.txt
	# cp $$HOME/.gitconfig ./

brew-init:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew-install:
	brew bundle --file=brew/brew-$(type) --all

zsh:
	if test -f $$HOME/.zshrc ; then 
		echo "already have $$HOME/.zshrc" 
	else 
		chsh -s $(which zsh)
	fi
	echo $$SHELL
	$$SHELL --version

sketchybar-init:
	brew services start sketchybar
	echo "defaults write com.knollsoft.Rectangle screenEdgeGapTop -int 24"
	# cr: https://www.josean.com/posts/sketchybar-setup

sketchybar-restart:
	brew services restart sketchybar

devbox-init:
	curl -fsSL https://get.jetify.com/devbox | bash

ohmyzsh:
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	sh install.sh

# zsh-add-source:
	# source_list=( "$$HOME/.zsh/alias.sh" "$$HOME/.zsh/addons.sh" )
	# for src in $$source_list; do
		# if [[ ! -z $(cat $$HOME/.zshrc | grep "source "$$src) ]]; then 
			# echo $$src; 
		# fi;
	# done
	# echo "$$source_list"

stow:
	stow --verbose --adopt --restow --target=$$HOME/ */

unstow:
	stow --verbose --target=$$HOME --delete */

clear-cache-nvim:
	rm -rf $$HOME/.local/share/nvim
	rm -rf $$HOME/.local/state/nvim/shada/
# credit
# https://venthur.de/2021-12-19-managing-dotfiles-with-stow.html
