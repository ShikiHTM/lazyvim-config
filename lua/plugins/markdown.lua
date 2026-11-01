return {
  "meanderingprogrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-mini/mini.nvim",
  },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig

  opts = {
    latex = {
      enabled = true,
      inline = true,
      block = true,
      converter = { "latex2text" },
    },
  },
}
