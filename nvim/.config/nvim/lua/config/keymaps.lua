-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- fzflua
vim.keymap.set("n", "<C-P>", require("fzf-lua").files, { desc = "Fzf Files" })
vim.keymap.set("n", "<C-G>", require("fzf-lua").live_grep, { desc = "Fzf Live grep" })

vim.keymap.set("n", "<leader>jq", "<cmd>%!jq .<CR>", { desc = "jq" })
vim.keymap.set("n", "<leader>yq", "<cmd>%!yq .<CR>", { desc = "yq" })

vim.keymap.set("n", "<leader>dt", "<cmd>vertical difft<CR>", { desc = "start diffthis" })
vim.keymap.set("n", "<leader>do", "<cmd>diffo<CR>", { desc = "diffoff" })

vim.keymap.set("n", "<leader>e", "<cmd>Neotree reveal<CR>")
