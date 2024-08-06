-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.wrap = true
vim.opt.whichwrap = "b,s,<,>,h,l"
vim.opt.relativenumber = false
vim.opt.list = true
vim.opt.listchars = {
  tab = "→ ",
  space = "•",
  eol = "↵",
  trail = "␣",
  extends = "»",
  precedes = "«",
  nbsp = "~",
}
vim.opt.showbreak = "↪ "
vim.g.root_spec = { "cwd" }
