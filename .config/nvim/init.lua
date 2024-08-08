require("josean.core")
require("josean.lazy")

local theme_manager = require("josean.core.theme_manager")

-- Load theme from the previous session
theme_manager.load_theme()

-- Save the theme on exit
vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = theme_manager.save_theme,
})
