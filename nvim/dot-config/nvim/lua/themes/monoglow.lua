local conf = {
  "wnkz/monoglow.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("monoglow").setup({
      style = "void",
      eob = true,
      transparent = true,
      -- Change the "glow" color
      on_colors = function(colors)
        colors.glow = "#e68d27"
      end,
    })
  end,
}

return {}
