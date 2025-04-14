local colors = {
  blue = "#2780e6",
  orange = "#e68d27",
  light_blue = "#87b3e6",
  light_orange = "#e5b987",
}

local conf = {
  "akinsho/bufferline.nvim",
  version = "*",
  event = "VeryLazy",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      mode = "buffers", -- "buffers" | "tabs"
      -- numbers = function(opts)
      --   return string.format("%s", opts.raise(opts.ordinal))
      -- end,
      separator_style = { "", "" }, -- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
      show_close_icon = false,
      show_buffer_icons = true,
      color_icons = true,
      show_buffer_close_icons = false,
      show_tab_indicators = false,
      tab_size = 0,
      max_name_length = 18,
      indicator = {
        -- style = "icon", -- icon | underline | none
        -- icon = " ",
        style = "underline",
        -- style = "none",
      },
      -- highlights = require("nord.plugins.bufferline").akinsho(),
    },
    highlights = {
      -- buffer_visible = {
      --   fg = "#000000",
      -- },
      buffer_selected = {
        -- fg = colors.light_orange,
        -- bg = "#2780e6",
        bold = true,
        italic = false,
      },
      -- indicator_visible = {
      --   fg = "<colour-value-here>",
      --   bg = "<colour-value-here>",
      -- },
      indicator_selected = {
        -- fg = colors.light_orange,
        --   bg = "<colour-value-here>",
      },
      separator_selected = {
        -- fg = "<colour-value-here>",
        -- bg = "<colour-value-here>",
      },
      separator_visible = {
        -- fg = "<colour-value-here>",
        -- bg = "<colour-value-here>",
      },
      separator = {
        -- fg = "#808080",
        -- bg = "<colour-value-here>",
      },
    },
  },
}

return { conf }
