stow:
	@echo "do nothing"

unstow:
	@echo "do nothing"

init:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

export-all:
	@brew bundle dump --all --force # --file=brew-$(type)

install:
	@brew bundle --file=brew-$(type) --all

clean:
	@brew cleanup
	@brew autoremove
	@brew doctor
	# brew update
	# brew upgrade
	# brew outdated --quiet | xargs brew uninstall --force
	# brew prune
	# brew missing --quiet | xargs brew install --force
	# brew bundle dump --force --file=brew-$(type) --all
