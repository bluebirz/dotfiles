-- git
THEME.git = THEME.git or {}
THEME.git.modified = ui.Style():fg("yellow"):bold()
THEME.git.deleted = ui.Style():fg("red"):bold()
-- THEME.git.untracked
-- THEME.git.ignored
THEME.git.added = ui.Style():fg("green"):bold()
-- THEME.git.updated
THEME.git.modified_sign = "M"
THEME.git.deleted_sign = "D"
THEME.git.added_sign = "A"
THEME.git.untracked_sign = "?"
THEME.git.ignored_sign = "I"
THEME.git.updated_sign = "U"
require("git"):setup()

-- full-border
require("full-border"):setup({
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
})

-- oh-my-posh
require("omp"):setup({ config = "~/.config/oh-my-posh/zen-icons.yaml" })

-- yaziline
-- THEME.which.separator_style.fg = "#808080"
require("yaziline"):setup({
	color = "#87b3e6", -- main theme color
	separator_style = "empty", -- "angly" | "curvy" | "liney" | e "empty"
	separator_open = "",
	separator_close = "",
	separator_open_thin = "",
	separator_close_thin = "",
	separator_head = "",
	separator_tail = "",
	select_symbol = "",
	yank_symbol = "󰆐",
	filename_max_length = 48, -- truncate when filename > 24
	filename_truncate_length = 6, -- leave 6 chars on both sides
	filename_truncate_separator = "...", -- the separator of the truncated filename
})

-- move line mode to left
-- local current_redraw = Current.redraw
-- function Current:redraw()
-- 	local t = current_redraw(self)
-- 	if #t < 2 then
-- 		return t
-- 	end
--
-- 	local area, width = t[1]:area(), t[2]:max_width()
-- 	t[1] = t[1]:area(ui.Rect({ x = area.x + width, y = area.y, w = math.max(0, area.w - width), h = area.h }))
-- 	-- t[2] = t[2]:align(ui.Text.LEFT)
-- 	t[2] = t[2]:area(ui.Rect({ x = area.x, y = area.y, w = math.min(width, area.w), h = area.h }))
-- 	return t
-- end
