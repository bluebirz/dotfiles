local colors = {
  blue = "#2780e6",
  orange = "#e68d27",
  light_blue = "#87b3e6",
  light_orange = "#e5b987",
}

return {
  "akinsho/bufferline.nvim",
  version = "*",
  event = "VeryLazy",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      numbers = function(opts)
        return string.format("%s", opts.raise(opts.ordinal))
      end,
      separator_style = "thin", -- "slant" | "slope" | "thick" | "thin"
      show_close_icon = false,
      show_buffer_close_icons = false,
      color_icons = true,
      indicator = {
        style = "icon", -- icon | underline | none
        icon = " ",
        -- style = "underline",
      },
      -- highlights = require("nord.plugins.bufferline").akinsho(),
    },
    highlights = {
      -- buffer_visible = {
      --   fg = "#000000",
      -- },
      buffer_selected = {
        fg = colors.light_orange,
        -- bg = "#2780e6",
        bold = true,
        italic = true,
      },
      -- indicator_visible = {
      --   fg = "<colour-value-here>",
      --   bg = "<colour-value-here>",
      -- },
      indicator_selected = {
        fg = colors.light_orange,
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
        fg = "#808080",
        -- bg = "<colour-value-here>",
      },
    },
  },
}
