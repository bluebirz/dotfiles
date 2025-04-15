local conf = {
  "EdenEast/nightfox.nvim",
  config = function()
    require("nightfox").setup({
      options = {
        transparent = true,
        terminal_colors = true,
        dim_inactive = false,
        module_default = true,
      },
      groups = {
        all = {
          NormalFloat = { fg = "fg1", bg = "NONE" },
        },
      },
    })
  end,
}

return { conf }
