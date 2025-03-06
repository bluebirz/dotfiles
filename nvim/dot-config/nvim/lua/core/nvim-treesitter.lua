return {
  "nvim-treesitter/nvim-treesitter",
  highlight = { enable = true },
  indent = { enable = true },
  opts = function(_, opts)
    -- add tsx and treesitter
    vim.list_extend(opts.ensure_installed, {
      "bash",
      "c",
      "graphql",
      "html",
      "http",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "toml",
      "tsx",
      "tsx",
      "typescript",
      "typescript",
      "vim",
      "xml",
      "yaml",
    })
  end,
}
