local themes = {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = true, -- disables setting the background color.
        show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
        term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
          enabled = false, -- dims the background color of inactive window
          shade = "dark",
          percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = false, -- Force no underline
        default_integrations = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },

  {
    "rmehri01/onenord.nvim",
    name = "onenord",
    priority = 1000,
    config = function()
      require("onenord").setup({
        theme = nil,
        borders = true, -- Split window borders
        fade_nc = false, -- Fade non-current windows, making them more distinguishable
        -- Style that is applied to various groups: see `highlight-args` for options
        styles = {
          comments = "NONE",
          strings = "NONE",
          keywords = "NONE",
          functions = "NONE",
          variables = "NONE",
          diagnostics = "underline",
        },
        disable = {
          background = false, -- Disable setting the background color
          float_background = false, -- Disable setting the background color for floating windows
          cursorline = false, -- Disable the cursorline
          eob_lines = false, -- Hide the end-of-buffer lines
        },
        -- Inverse highlight for different groups
        inverse = {
          match_paren = false,
        },
        custom_highlights = {}, -- Overwrite default highlight groups
        custom_colors = {}, -- Overwrite default colors
      })
    end,
  },
}
return themes
