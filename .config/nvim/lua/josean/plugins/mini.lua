return {
  "echasnovski/mini.nvim",
  name = "mini.nvim",
  version = false,
  config = function()
    require("mini.ai").setup()
  end,
}