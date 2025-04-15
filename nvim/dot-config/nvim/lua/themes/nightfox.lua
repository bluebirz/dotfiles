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
    })
  end,
}

return { conf }
