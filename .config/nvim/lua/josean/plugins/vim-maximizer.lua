return {
  "szw/vim-maximizer",
  keys = {
    {
      "<leader>m",
      function()
        local view = require("nvim-tree.view")
        local was_open = view.is_visible()

        -- Close nvim-tree before maximizing
        if was_open then
          vim.cmd("NvimTreeClose")
        end

        -- Toggle maximizer
        vim.cmd("MaximizerToggle")
      end,
      desc = "Maximize/minimize a split",
    },
  },
}
