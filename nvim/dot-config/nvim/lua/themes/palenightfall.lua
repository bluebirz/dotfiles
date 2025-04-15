local conf = {
  "JoosepAlviste/palenightfall.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("palenightfall").setup({
      transparent = true,
    })
  end,
}

return {}
