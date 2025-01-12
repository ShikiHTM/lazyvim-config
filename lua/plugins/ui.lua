return {
  "akinsho/bufferline.nvim",
  keys = {
    { "<Tab>", "<Cmd>BufferlineCycleNext<CR>", desc = "Next Tab" },
    { "<S-Tab>", "<Cmd>BufferlineCyclePrev<CR>", desc = "Previous Tab" },
  },
  opts = {
    options = {
      show_buffer_close_icon = false,
      mode = "tabs",
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "auto",
      },
    },
  },

  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No Information available",
        },
        opts = { skip = true },
      })
    end,
  },
}
