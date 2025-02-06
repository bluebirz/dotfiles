return {
  "echasnovski/mini.indentscope",
  version = false,
  config = function(_, opts)
    vim.cmd([[
      augroup TerminalDisable
        autocmd!
        autocmd TermOpen * lua vim.b.miniindentscope_disable = true
      augroup END]])
    require("mini.indentscope").setup(opts)
    -- Disable for certain filetypes
    -- vim.api.nvim_create_autocmd({ "FileType" }, {
    --   desc = "Disable indentscope for certain filetypes",
    --   callback = function()
    --     local ignore_filetypes = {
    --       "help",
    --       "lazy",
    --       "mason",
    --       "neo-tree",
    --       "notify",
    --       "startify",
    --       "toggleterm",
    --       "Trouble",
    --     }
    --     if vim.tbl_contains(ignore_filetypes, vim.bo.filetype) then
    --       vim.b.miniindentscope_disable = true
    --     end
    --   end,
    -- })
  end,
  opts = {
    -- symbol = "▏",
    symbol = "│",
    options = {
      -- Type of scope's border: which line(s) with smaller indent to
      -- categorize as border. Can be one of: 'both', 'top', 'bottom', 'none'.
      border = "both",
      -- Whether to use cursor column when computing reference indent.
      -- Useful to see incremental scopes with horizontal cursor movements.
      indent_at_cursor = true,
      -- Maximum number of lines above or below within which scope is computed
      n_lines = 10000,
      -- Whether to first check input line to be a border of adjacent scope.
      -- Use it if you want to place cursor on function header to get scope of
      -- its body.
      try_as_border = true,
    },
  },
}
