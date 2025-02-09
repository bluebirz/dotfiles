# backup:
	# brew list > brew.txt
	# git config --get-regexp '^alias\.' > git/alias.txt
	# cp $$HOME/.gitconfig ./

brew-init:
	$(MAKE) -C brew init

brew-install:
	$(MAKE) -C brew install $(type)

sketchybar-init:
	$(MAKE) -C sketchybar init

sketchybar-restart:
	$(MAKE) -C sketchybar restart

sketchybar-stop:
	$(MAKE) -C sketchybar stop

reset-dock:
	rm ~/Library/Application\ Support/Dock/*.db ; killall Dock

stow:  
	@for folder in $$(dirname $$(ls -d */Makefile)); do \
		echo "---$$folder---"; \
		$(MAKE) -C $$folder stow; \
	done

unstow:
	@for folder in $$(dirname $$(ls -d */Makefile)); do \
		echo "---$$folder---"; \
		$(MAKE) -C $$folder unstow; \
	done

clear-cache-nvim:
	$(MAKE) -C nvim clear-cache;

# credit
# https://venthur.de/2021-12-19-managing-dotfiles-with-stow.html
