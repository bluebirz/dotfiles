-- https://github.com/mistricky/codesnap.nvim
local conf = {
  "mistricky/codesnap.nvim",
  build = "make build_generator",
  event = "VeryLazy",
  -- keys = {
  --   { "<leader>cc", "<cmd>CodeSnap<cr>", mode = "x", desc = "Save selected code snapshot into clipboard" },
  --   { "<leader>cs", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
  -- },
  opts = {
    -- save_path = "~/Pictures",
    save_path = "~/Desktop",
    code_font_family = "CodeNewRoman Nerd Font",
    has_breadcrumbs = false,
    has_line_number = true,
    show_workspace = false,
    min_width = 0,
    bg_theme = "sea",
    bg_x_padding = 9,
    bg_y_padding = 9,
    watermark = "",
  },
}

return { conf }
