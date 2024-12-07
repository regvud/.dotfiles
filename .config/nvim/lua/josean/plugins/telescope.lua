return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },

  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        layout_config = {
          horizontal = {
            preview_width = 0.6,
          },
        },
        mappings = {
          i = {
            ["<ESC>"] = actions.close, -- close
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    local highlight = vim.api.nvim_set_hl

    highlight(0, "TelescopeBorder", { fg = "NONE" })
    highlight(0, "TelescopePromptBorder", { bg = "NONE" })

    telescope.load_extension("fzf")
    telescope.load_extension("harpoon")
  end,
}
