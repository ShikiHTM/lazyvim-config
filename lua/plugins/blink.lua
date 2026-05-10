return {
  "saghen/blink.cmp",
  dependencies = {
    "rafamadriz/friendly-snippets",
    "onsails/lspkind.nvim",
  },
  version = "1.*",
  --- @module 'blink.cmp',
  --- @type blink.cmp.Config
  opts = {
    keymap = {
      preset = "none",
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide" },
      ["<CR>"] = { "accept", "fallback" },

      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },

      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "mono",
    },

    -- (Default) Only show the documentation popup when manually triggered
    completion = {
      menu = {
        draw = {
          components = {
            kind_icon = {
              text = function(ctx)
                return require("lspkind").symbol_map[ctx.kind] or ""
              end,
            },
          },
          columns = {
            { "label", "label_description", gap = 1 },
            { "kind_icon", "kind", gap = 1 },
          },
        },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500,
        window = { border = "rounded" },
      },
      ghost_text = { enabled = true },
    },

    snippets = { preset = "default" },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
  },
  opts_extend = { "sources.default" },
}
