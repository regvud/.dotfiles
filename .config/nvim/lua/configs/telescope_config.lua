local telescope_setup = {
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = "move_selection_previous",
        ["<C-j>"] = "move_selection_next",
        ["<Tab>"] = "select_default",
      },
    },
  },
}

return telescope_setup
