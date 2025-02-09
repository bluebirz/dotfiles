stow:
	@stow --verbose --adopt --restow --target=$$HOME/ .

unstow:
	@stow --verbose --target=$$HOME --delete .

activate:
	if test -f $$HOME/.zshrc ; then 
		echo "already have $$HOME/.zshrc" 
	else 
		chsh -s $(which zsh)
	fi
	echo $$SHELL
	$$SHELL --version

# zsh-add-source:
	# source_list=( "$$HOME/.zsh/alias.sh" "$$HOME/.zsh/addons.sh" )
	# for src in $$source_list; do
		# if [[ ! -z $(cat $$HOME/.zshrc | grep "source "$$src) ]]; then 
			# echo $$src; 
		# fi;
	# done
	# echo "$$source_list"

