-- Using lazy.nvim
local conf = {
  "cdmill/neomodern.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("neomodern").setup({
      -- optional configuration here
      theme = "iceclimber",
      transparent = true,
      plain_float = true,
      plugin = {
        cmp = {
          plain = true,
        },
      },
    })
    -- require("neomodern").load()
  end,
}

return {}
