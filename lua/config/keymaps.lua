-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymaps = vim.keymap
local opts = { silent = true, noremap = true }

-- Select all
keymaps.set("n", "<C-a>", "gg<S-v>G")

-- Split Window
keymaps.set("n", "ss", ":split<Return>", opts)
keymaps.set("n", "sv", ":vsplit<Return>", opts)

-- Move cursor
keymaps.set("n", "sh", "<C-w>h", opts)
keymaps.set("n", "sj", "<C-w>j", opts)
keymaps.set("n", "sk", "<C-w>k", opts)
keymaps.set("n", "sl", "<C-w>l", opts)

-- Rotate window with previous one
keymaps.set("n", "sr", "<C-w><s-r>", opts)

-- Resize window
keymaps.set("n", "<C-w><Left>", "<C-w><")
keymaps.set("n", "<C-w><Right>", "<C-w>>")
keymaps.set("n", "<C-w><Up>", "<C-w>+")
keymaps.set("n", "<C-w><Down>", "<C-w>-")

-- Inc rename
keymaps.set("n", "<leader>rn", ":IncRename ", opts)

-- Move Text
keymaps.set("n", "<A-j>", ":m .+1<CR>==", opts)
keymaps.set("n", "<A-k>", ":m .-2<CR>==", opts)

keymaps.del("n", "<leader>bp", opts)
keymaps.del("n", "<leader>bP", opts)

for i = 1, 9 do
  keymaps.set("n", "<A-" .. i .. ">", "<Cmd>BufferGoto " .. i .. "<C=>", opts)
end
keymaps.set("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
keymaps.set("n", "<leader>bc", "<Cmd>BufferClose<CR>", opts)
keymaps.set("n", "<leader>bp", "<Cmd>BufferPick<CR>", opts)
keymaps.set("n", "<s-tab>", "<Cmd>BufferPrevious<CR>", opts)
keymaps.set("n", "<tab>", "<Cmd>BufferNext<CR>", opts)
