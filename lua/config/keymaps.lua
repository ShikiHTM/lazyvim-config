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

-- New tab
keymaps.set("n", "te", ":tabedit<Return>", opts)
keymaps.set("n", "<tab>", ":tabnext<Return>", opts)
keymaps.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Inc rename
keymaps.set("n", "<leader>rn", ":IncRename ", opts)

-- Move Text
keymaps.set("n", "<A-j>", ":m .+1<CR>==", opts)
keymaps.set("n", "<A-k>", ":m .-2<CR>==", opts)
