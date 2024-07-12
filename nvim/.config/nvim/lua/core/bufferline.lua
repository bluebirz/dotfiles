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
      separator_style = "thin",
      show_close_icon = false,
      show_buffer_close_icons = false,
      color_icons = false,
      indicator = {
        style = "underline",
      },
      -- highlights = require("nord.plugins.bufferline").akinsho(),
    },
  },
}
