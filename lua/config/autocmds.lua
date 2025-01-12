-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable auto-comment at new line
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
  desc = "Disable new line comment",
})

-- Turn off paste mode when leave insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = { "json", "jsx" },
  callback = function()
    vim.wo.conceallevel = 0
    vim.wo.spell = true
  end,
})

-- Enable autoformat for specific fileType
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "html", "css" },
  callback = function()
    vim.b.autoformat = true
  end,
})

-- Disable autoformat for specific fileType
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp" },
  callback = function()
    vim.b.autoformat = false
  end,
})
