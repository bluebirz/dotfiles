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
    options = { try_as_border = true },
  },
}
