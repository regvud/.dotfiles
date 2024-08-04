local M = {}

-- toggle relative numbers
M.toggle_relativenumber = function()
  if vim.wo.relativenumber then
    vim.wo.relativenumber = false
  else
    vim.wo.relativenumber = true
  end
end

-- switch theme
M.themeSwitcher = function()
  local current_theme = vim.g.colors_name
  if string.find(current_theme, "catppuccin") then
    vim.cmd("colorscheme rose-pine-dawn")
  else
    vim.cmd("colorscheme catppuccin")
  end
end

return M
