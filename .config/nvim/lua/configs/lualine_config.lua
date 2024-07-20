-- LSP clients attached to buffer
local clients_lsp = function()
  local bufnr = vim.api.nvim_get_current_buf()

  local clients = vim.lsp.buf_get_clients(bufnr)
  if next(clients) == nil then
    return ""
  end

  local c = {}
  for _, client in pairs(clients) do
    table.insert(c, client.name)
  end
  return "\u{f085} " .. table.concat(c, "|")
end

local lualine_setup = {
  options = {
    icons_enabled = true,
    theme = "palenight",
    component_separators = { left = "│", right = "│" },
    section_separators = { left = "", right = "█" },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = {
      "branch",
      {
        "diff",
        diff_color = {
          added = {
            fg = "#2da44e",
          },
          modified = {
            fg = "#e16f24",
          },
          removed = {
            fg = "#fa4549",
          },
        },
      },
      "diagnostics",
    },
    lualine_c = { "filename" },
    lualine_x = { clients_lsp, { "fileformat", symbols = { unix = "" } }, "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
}

return lualine_setup
