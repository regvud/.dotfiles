local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "pyright", "eslint", "tsserver" }
local handlers = {
  ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" }),
  ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" }),
}

-- Function to define custom signs
local function define_diagnostic_signs()
  local signs = {
    Error = " ",
    Warn = " ",
    Hint = "",
    Info = " ",
  }

  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl })
  end
end

-- Call the function to define the signs
define_diagnostic_signs()

-- Disable error underlines
vim.diagnostic.config {
  underline = false,
  virtual_text = {
    spacing = 4,
    prefix = "●",
  },
  signs = true,
  update_in_insert = false,
  severity_sort = true,
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
    handlers = handlers,
  }
end
