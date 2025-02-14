path_user := "$$HOME/Library/Application Support/VSCodium/"
path_extensions := "$$HOME/.vscode-oss/"
stow:
	@stow --verbose=1 --adopt --restow --target=$(path_user) User
	@stow --verbose=1 --adopt --restow --target=$(path_extensions) extensions

unstow:
	@stow --verbose=1 --target=$(path_user) --delete User
	@stow --verbose=1 --target=$(path_extensions) --delete extensions
