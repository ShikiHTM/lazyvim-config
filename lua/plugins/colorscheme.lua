return {
  "sainnhe/edge",
  lazy = false,
  priority = 1000,
  config = function()
    vim.o.background = "dark"

    vim.g.edge_style = "aura"
    vim.g.airline_theme = "edge"

    vim.g.edge_transparent_background = 1

    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "edge",
      callback = function()
        local function add_hl_attr(hl_group, attr)
          local hl = vim.api.nvim_get_hl(0, { name = hl_group })
          vim.api.nvim_set_hl(0, hl_group, vim.tbl_extend("force", hl, attr))
        end

        add_hl_attr("String", { underline = true })

        add_hl_attr("Identifier", { bold = true })
        add_hl_attr("@variable", { bold = true })
      end,
    })

    vim.cmd.colorscheme("edge")
  end,
}
