-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- terminal show no numbers
vim.cmd([[
  augroup neovim_terminal
    autocmd!
    " Enter Terminal-mode (insert) automatically
    autocmd TermOpen * startinsert
    " Disables number lines on terminal buffers
    autocmd TermOpen * setlocal nonumber norelativenumber
    " allows you to use Ctrl-c on terminal window
    autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>
augroup END
]])

-- dim inactive windows
-- vim.cmd([[
--   hi def Dim cterm=none ctermbg=none ctermfg=242
--
--   function! s:DimInactiveWindow()
--       syntax region Dim start='' end='$$$end$$$'
--   endfunction
--
--   function! s:UndimActiveWindow()
--       ownsyntax
--   endfunction
--
--   autocmd WinEnter * call s:UndimActiveWindow()
--   autocmd BufEnter * call s:UndimActiveWindow()
--   autocmd WinLeave * call s:DimInactiveWindow()
-- ]])

vim.cmd([[
  set cursorline
  hi cursorline cterm=none term=none
  autocmd WinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
  highlight CursorLine guibg=#303000 ctermbg=234
]])
-- vim.cmd([[highlight Visual cterm=bold ctermbg=none ctermfg=none]])

-- See ":help neo-tree-highlights" for a list of available highlight groups
-- vim.cmd([[
--   hi NeoTreeCursorLine guibg=#00004D cterm=underline
-- ]])
-- vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#RRGGBB" })
-- change cursor line
-- vim.cmd([[
--   highlight CursorLine cterm=NONE ctermbg=DarkGray guibg=#3c3c3c
-- ]])
