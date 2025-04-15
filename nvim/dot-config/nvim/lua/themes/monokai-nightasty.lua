local conf = {
  "polirritmico/monokai-nightasty.nvim",
  lazy = false,
  priority = 1000,
  keys = {
    { "<leader>tt", "<Cmd>MonokaiToggleLight<CR>", desc = "Monokai-Nightasty: Toggle dark/light theme." },
  },
  ---@module "monokai-nightasty"
  ---@type monokai.UserConfig
  opts = {
    dark_style_background = "transparent", -- default | dark | transparent | #RRGGBB
    light_style_background = "default", -- default | dark | transparent | #RRGGBB
    -- lualine_bold = true, -- Lualine headers will be bold or regular
    lualine_style = "dark", -- "dark", "light" or "default" (default follows dark/light style)
    markdown_header_marks = true,
    -- hl_styles = { comments = { italic = false } },
    terminal_colors = function(colors)
      return { fg = colors.fg_dark }
    end,
  },
  config = function(_, opts)
    -- vim.opt.cursorline = true -- Highlight line at the cursor position
    -- vim.o.background = "dark" -- Default to dark theme
    -- require("monokai-nightasty").setup(opts)
    require("monokai-nightasty").load(opts)
  end,
}

return {}
