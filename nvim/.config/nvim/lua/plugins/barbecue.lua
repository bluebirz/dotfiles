return {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    -- "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  opts = {
    -- configurations go here
  },
  config = function()
    require("barbecue").setup({
      theme = "nord",
      show_navic = true,
      show_dirname = false,
      show_modified = false,
      context_follow_icon_color = true,
      exclude_filetypes = { "toggleterm" },
    })
  end,
}
