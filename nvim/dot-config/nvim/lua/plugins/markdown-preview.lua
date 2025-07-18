local conf = {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  event = "VeryLazy",
  -- build = "cd app && yarn install",
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
  keys = {
    { "<leader>m", "", desc = "Markdown Preview" },
    {
      "<leader>mp",
      "<cmd>MarkdownPreviewToggle<CR>",
      desc = "Markdown Preview Toggle",
      noremap = true,
      silent = true,
    },
  },

  -- sh ~/.local/share/nvim/lazy/markdown-preview.nvim/app/install.sh
}

return { conf }
