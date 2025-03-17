return {
  {
    "Rawnly/gist.nvim",
    cmd = { "GistCreate", "GistCreateFromFile", "GistsList" },
    config = true,
    keys = {
      { "<leader>gi", "", desc = "Gist" },
      { "<leader>gic", "<cmd>GistCreate<CR>", desc = "Create Gist" },
      { "<leader>gif", "<cmd>GistCreateFromFile<CR>", desc = "Create Gist from file" },
      { "<leader>gil", "<cmd>GistsList<CR>", desc = "List Gists" },
    },
  },
  -- `GistsList` opens the selected gif in a terminal buffer,
  -- nvim-unception uses neovim remote rpc functionality to open the gist in an actual buffer
  -- and prevents neovim buffer inception
  {
    "samjwill/nvim-unception",
    lazy = false,
    init = function()
      vim.g.unception_block_while_host_edits = true
    end,
  },
}
