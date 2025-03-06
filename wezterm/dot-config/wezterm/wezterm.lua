-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "nord"

config.font = wezterm.font({
	family = "CodeNewRoman Nerd Font",
	weight = "Medium",
})
config.font_size = 14
config.underline_position = -2
config.line_height = 1.2
config.cell_width = 1.05

config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.window_padding = {
	left = 7,
	right = 7,
	top = 7,
	bottom = 7,
}
config.window_background_opacity = 0.97
-- and finally, return the configuration to wezterm
return config
