-- return {
--   "tpope/vim-fugitive",
--   event = "VeryLazy",
-- }
return {
  "echasnovski/mini-git",
  version = "*",
  main = "mini.git",
  event = "VeryLazy",
  config = function()
    require("mini.git").setup()
  end,
}
