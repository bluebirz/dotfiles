-- Using lazy.nvim
local conf = {
  "ribru17/bamboo.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("bamboo").setup({
      -- optional configuration here
      style = "vulgaris", -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
      toggle_style_key = "<leader>ts", -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
      -- toggle_style_list = { "vulgaris", "multiplex", "light" }, -- List of styles to toggle between
      toggle_style_list = { "vulgaris", "light" }, -- List of styles to toggle between
      transparent = false, -- Show/hide background
      dim_inactive = false, -- Dim inactive windows/buffers
      -- Lualine options --
      lualine = {
        transparent = false, -- lualine center bar transparency
      },
      highlights = {
        -- make comments blend nicely with background, similar to other color schemes
        ["@comment"] = { fg = "$grey" },
        ["@function"] = { fmt = "italic" },
      },
    })
    require("bamboo").load()
  end,
}
return {}
