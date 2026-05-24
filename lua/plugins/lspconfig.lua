return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = true },
    diagnostics = {
      underline = true,
      update_in_insert = false,
      virtual_text = {
        spacing = 4,
        source = "if_many",
        prefix = "●",
      },
      severity_sort = true,
    },

    servers = {
      lua_ls = {
        settings = {
          Lua = {
            workspace = { checkThirdParty = false },
            completion = { callSnippet = "Replace" },
            hint = { enable = true },
          },
        },
      },

      clangd = {
        mason = false,
        cmd = {
          "clangd",
          "--query-driver=C:/Users/Shiki/scoop/apps/gcc/current/bin/gcc.exe",
          "--clang-tidy",
          "--background-index",
          "--offset-encoding=utf-16",
        },
      },

      intelephense = {
        filetypes = { "php", "blade", "php_cs" },
        settings = {
          intelephense = {
            environment = {
              includePaths = { "vendor/laravel/framework/src/Illuminate" },
            },
          },
        },
      },

      laravel_ls = {
        cmd = { "laravel-ls" },
        filetypes = {
          "php",
          "blade",
        },
        root_markers = { "artisan" },
      },

      gopls = {
        cmd = { "gopls" },
        filetypes = { "go", "gomod", "gowork", "gotmpl" },
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
            gofumpt = true,
          },
        },
      },
    },

    setup = {},
  },
}
