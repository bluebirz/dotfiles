return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  event = "VeryLazy",
  -- build = "cd app && yarn install",
  build = function(plugin)
    if vim.fn.executable("npx") then
      vim.cmd("!cd " .. plugin.dir .. " && cd app && npx --yes yarn install && npm install")
    else
      vim.cmd([[Lazy load markdown-preview.nvim]])
      vim.fn["mkdp#util#install"]()
    end
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
