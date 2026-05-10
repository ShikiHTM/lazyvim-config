return {
  "mason-org/mason.nvim",
  dependencies = { "mason-org/mason-lspconfig.nvim" },
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "prisma-language-server",
      "clangd",
      "cpplint",
      "eslint-lsp",
      "lua-language-server",
      "typescript-language-server",
      "stylua",
      "shfmt",
      "pyright",
      "css-lsp",
      "html-lsp",
      "emmet-language-server",
    })
  end,
}
