local M = {}

local theme_file = vim.fn.stdpath("data") .. "/theme.txt"

function M.save_theme()
  local theme = vim.g.colors_name
  if theme then
    vim.fn.writefile({ theme }, theme_file)
  end
end

function M.load_theme()
  if vim.fn.filereadable(theme_file) == 1 then
    local theme = vim.fn.readfile(theme_file)[1]
    if theme then
      vim.cmd("colorscheme " .. theme)
    end
  end
end

return M
