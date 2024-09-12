local themes = {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = false, -- disables setting the background color.
        show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
        term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
          enabled = false, -- dims the background color of inactive window
          shade = "dark",
          percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        no_italic = true, -- Force no italic
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
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "dawn", -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,
        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = false,
          transparency = false,
        },

        groups = {
          border = "muted",
          link = "iris",
          panel = "surface",

          error = "love",
          hint = "iris",
          info = "foam",
          note = "pine",
          todo = "rose",
          warn = "gold",

          git_add = "foam",
          git_change = "rose",
          git_delete = "love",
          git_dirty = "rose",
          git_ignore = "muted",
          git_merge = "iris",
          git_rename = "pine",
          git_stage = "iris",
          git_text = "rose",
          git_untracked = "subtle",

          h1 = "iris",
          h2 = "foam",
          h3 = "rose",
          h4 = "gold",
          h5 = "pine",
          h6 = "foam",
        },

        highlight_groups = {
          ["@constant.builtin"] = { fg = "rose" },
          ["@variable.member"] = { fg = "pine" },

          ["@keyword"] = { fg = "iris" },
          ["@keyword.repeat"] = { fg = "love" },
          ["@keyword.return"] = { fg = "love" },
          ["@keyword.import"] = { fg = "#813799" },
          ["@keyword.conditional"] = { fg = "love" },
          ["@keyword.operator"] = { fg = "love" },
          ["@keyword.exception"] = { fg = "#cf5656" },

          ["@constructor"] = { fg = "#6987cb" },
          ["@define"] = { fg = "#907aa9" },
          ["@type"] = { fg = "love" },
          ["@string"] = { fg = "foam" },
          ["@comment"] = { fg = "muted" },
          ["@function.method"] = { fg = "love" },

          -- ts
          ["@variable.member.tsx"] = { fg = "#975C8D" },
          ["@variable.member.typescript"] = { fg = "#975C8D" },
          ["@variable.member.typescriptreact"] = { fg = "#975C8D" },

          ["@lsp.type.property.typescript"] = { fg = "#975C8D" },
          ["@lsp.type.property.typescriptreact"] = { fg = "#975C8D" },

          ["@lsp.type.interface.typescript"] = { fg = "love" },
          ["@lsp.type.interface.typescriptreact"] = { fg = "love" },

          ["@function.method.tsx"] = { fg = "rose" },
          ["@function.method.typescript"] = { fg = "rose" },
          ["@function.method.typescriptreact"] = { fg = "rose" },

          ["@string.tsx"] = { fg = "foam" },
          ["@string.typescript"] = { fg = "foam" },
          ["@string.typescriptreact"] = { fg = "foam" },

          ["@boolean.tsx"] = { fg = "#666a86" },
          ["@boolean.typescript"] = { fg = "#666a86" },
          ["@boolean.typescriptreact"] = { fg = "#666a86" },

          ["@tag.builtin.tsx"] = { fg = "#478CCF" },
          ["@tag.tsx"] = { fg = "#55679C" },
          ["@tag.attribute.tsx"] = { fg = "rose" },

          --json
          ["@property.json"] = { fg = "iris" },
        },
      })
    end,
  },
}

return themes
