path := "$$HOME/Library/Application Support/"

stow: 
	@stow --verbose=1 --adopt --restow --target=$(path) eza 

unstow:
	@stow --verbose=1 --target=$(path) --delete eza
