local TelescopeColor = {
  TelescopeNormal = { bg = "none" },
}

for hl, col in pairs(TelescopeColor) do
  vim.api.nvim_set_hl(0, hl, col)
end

local function disable_bold_highlight()
  local highlight_groups = vim.fn.getcompletion("", "highlight")
  for _, group in ipairs(highlight_groups) do
    local hl = vim.api.nvim_get_hl_by_name(group, true)
    if hl and hl.bold then
      hl.bold = nil
      vim.api.nvim_set_hl(0, group, hl)
    end
  end
end

return disable_bold_highlight()
