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
      extensions = {
        fzf = {}
      },
      defaults = {
        layout_config = { prompt_position = "top", preview_width = 0.55 },
        sorting_strategy = "ascending",
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
    require "josean.core.multigrep".setup()
  end,
}
