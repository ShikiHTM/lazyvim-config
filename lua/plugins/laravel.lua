return {
  "adalessa/laravel.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "tpope/vim-dotenv",
    "MunifTanjim/nui.nvim",
  },
  cmd = { "Laravel" },
  keys = {
    { "<leader>la", ":Laravel artisan<cr>", desc = "Laravel Artisan" },
    { "<leader>lr", ":Laravel routes<cr>", desc = "Laravel Routes" },
    { "<leader>lm", ":Laravel make<cr>", desc = "Laravel Make" },
  },
  config = true,
}
