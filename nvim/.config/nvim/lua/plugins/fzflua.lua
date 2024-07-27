return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({})
  end,
  keys = {
    {
      "<C-P>",
      "<cmd>FzfLua files<CR>",
      desc = "Fzf Files",
    },
    {
      "<C-G>",
      "<cmd>FzfLua live_grep<CR>",
      desc = "Fzf Live grep",
    },
  },
}
