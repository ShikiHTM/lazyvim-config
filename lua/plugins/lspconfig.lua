return {
  "neovim/nvim-lspconfig",

  ---@type vim.lsp.Config
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

      -- intelephense = {
      --   filetypes = { "php", "blade", "php_cs" },
      --   settings = {
      --     intelephense = {
      --       environment = {
      --         includePaths = { "vendor/laravel/framework/src/Illuminate" },
      --       },
      --     },
      --   },
      -- },

      -- laravel_ls = {
      --   cmd = { "laravel-ls" },
      --   filetypes = {
      --     "php",
      --     "blade",
      --   },
      --   root_markers = { "artisan" },
      -- },

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

      clangd = {
        cmd = { "clangd" },
        filetypes = { "c", "c.doxygen", "cpp", "cpp.doxygen", "objc", "objcpp", "cuda" },
        root_markers = {
          ".clangd",
          ".clang-tidy",
          ".clang-format",
          "compile_commands.json",
          "compile_flags.txt",
          "configure.ac",
          ".git",
        },
      },

      tsc = {
        settings = {
          ["js/ts"] = {
            implementationsCodeLens = {
              enabled = false,
            },
            inlayHints = {
              enumMemberValues = {
                enabled = true,
              },
              functionLikeReturnTypes = {
                enabled = true,
              },
              parameterNames = {
                enabled = "literals",
                suppressWhenArgumentMatchesName = true,
              },
              parameterTypes = {
                enabled = true,
              },
              propertyDeclarationTypes = {
                enabled = true,
              },
              variableTypes = {
                enabled = true,
              },
            },
          },
        },
      },

      prismals = {
        cmd = { "prisma-language-server", "--stdio" },
        filetypes = { "prisma" },
        root_markers = { "package.json", ".git" },
      },
    },

    setup = {},
  },
}
