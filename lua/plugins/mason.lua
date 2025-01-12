return {
  "williamboman/mason.nvim",
  dependencies = { "williamboman/mason-lspconfig.nvim" },
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
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
