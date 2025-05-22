return {
  "rcarriga/nvim-notify",
  priority = 1000,
  lazy = false,
  config = function()
    require("notify").setup({
      background_colour = "#000000",
      max_width = 500,
      level = 3,
      render = "compact",
      stages = "fade",
      timeout = 1000
    })
  end
}
