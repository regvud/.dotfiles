return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>h", mark.add_file, { desc = "Add file to harpoon" })
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
  end,
}
