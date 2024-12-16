return {
  'stevearc/conform.nvim',
  opts = {},
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        javascript = { "prettierd", "prettier", stop_after_first = true },
      },
      default_format_opts = {
        lsp_format = "fallback",
      },
    })

    vim.keymap.set('n', "<M-F>", conform.format)
  end
}
