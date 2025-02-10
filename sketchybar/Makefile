stow:
	@stow --verbose --adopt --restow --target=$$HOME/ .

unstow:
	@stow --verbose --target=$$HOME --delete .

init:
	brew services start sketchybar
	defaults write com.knollsoft.Rectangle screenEdgeGapTop -int 32
	# cr: https://www.josean.com/posts/sketchybar-setup

restart:
	brew services restart sketchybar

stop:
	brew services stop sketchybar

reload:
	sketchybar --reload
