return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
  opts = {
    focus = true,
  },
  cmd = "Trouble",
  keys = {
    { "<leader>la", "<cmd>Trouble diagnostics toggle<CR>", desc = "Open trouble workspace diagnostics" },
    { "<leader>lf", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Open trouble document diagnostics" },
    { "<leader>lt", "<cmd>Trouble todo toggle<CR>", desc = "Open todos in trouble" },
  },
}
