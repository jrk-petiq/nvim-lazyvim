return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "djlint")
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}
      table.insert(opts.sources, nls.builtins.formatting.djlint.with({ filetypes = { "htmldjango" } }))
      table.insert(opts.sources, nls.builtins.diagnostics.djlint.with({ filetypes = { "htmldjango" } }))
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["htmldjango"] = { "djlint" },
      },
    },
  },
}
