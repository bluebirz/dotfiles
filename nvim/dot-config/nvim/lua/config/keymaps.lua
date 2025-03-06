-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>jq", "<cmd>%!jq .<CR>", { desc = "jq" })
vim.keymap.set("n", "<leader>yq", "<cmd>%!yq .<CR>", { desc = "yq" })

vim.keymap.set("n", "<leader>d", "", { desc = "+diff" })
vim.keymap.set("n", "<leader>dt", "<cmd>vertical difft<CR>", { desc = "start diffthis" })
vim.keymap.set("n", "<leader>do", "<cmd>diffo<CR>", { desc = "diffoff" })

vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })
-- vim.keymap.set({ "n", "v", "i" }, "<C-S-s>", "<cmd>echo 'noa w'<CR>", { desc = "Save without formatting" })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Quit terminal mode" })
