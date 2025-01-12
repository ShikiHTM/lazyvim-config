-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Undercurl
vim.cmd([[let &t_Cs = "\e$4:3m"]])
vim.cmd([[let &t_Ce = "\e$4:0m"]])

-- Tabs
vim.cmd([[set tabstop=4]])
vim.cmd([[set shiftwidth=4]])

-- Cursor style
-- vim.cmd([[set guicursor=n-v-c-i:block]])
