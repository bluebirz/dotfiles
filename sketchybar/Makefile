stow:
	@stow --verbose --adopt --restow --dotfiles --target=$$HOME/ .

unstow:
	@stow --verbose --dotfiles --target=$$HOME --delete .

init:
	@brew services start sketchybar

enable-rectangle-offset:
	@defaults write com.knollsoft.Rectangle screenEdgeGapTop -int 32
	# cr: https://www.josean.com/posts/sketchybar-setup

disable-rectangle-offset:
	@defaults write com.knollsoft.Rectangle screenEdgeGapTop -int 24

restart:
	@brew services restart sketchybar

stop:
	@brew services stop sketchybar

reload:
	@sketchybar --reload

list_menu:
	@sketchybar --query default_menu_items
