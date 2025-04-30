local conf = {
  "brianhuster/live-preview.nvim",
  dependencies = {
    -- You can choose one of the following pickers
    -- 'nvim-telescope/telescope.nvim',
    "ibhagwan/fzf-lua",
    -- 'echasnovski/mini.pick',
  },
  keys = {
    { "<leader>mp", "", desc = "Live Preview" },
    { "<leader>mps", "<cmd>LivePreview start<CR>", desc = "Live Preview - start" },
    { "<leader>mpc", "<cmd>LivePreview close<CR>", desc = "Live Preview - close" },
    { "<leader>mpp", "<cmd>LivePreview pick<CR>", desc = "Live Preview - pick" },
  },
}

return {}
