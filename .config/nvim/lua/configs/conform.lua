local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    html = { "prettierd" },
    css = { "prettierd" },
    scss = { "prettierd" },
    json = { "prettierd" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescriptreact = { "prettierd" },
    python = function(bufnr)
      if require("conform").get_formatter_info("ruff_format", bufnr).available then
        return { "ruff_format" }
      else
        return { "isort", "black" }
      end
    end,
    ["_"] = { "trim_whitespace" },
  },

  format_on_save = {
    timeout_ms = 300,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
