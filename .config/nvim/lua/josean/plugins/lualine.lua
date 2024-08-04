return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")

    local C = require("catppuccin.palettes").get_palette("macchiato")
    local O = require("catppuccin").options
    local catppuccin = {}

    local transparent_bg = O.transparent_background and "NONE" or C.mantle

    catppuccin.normal = {
      a = { bg = C.blue, fg = C.mantle, gui = "bold" },
      b = { bg = C.surface0, fg = C.blue },
      c = { bg = transparent_bg, fg = C.text },
    }

    catppuccin.insert = {
      a = { bg = C.green, fg = C.base, gui = "bold" },
      b = { bg = C.surface0, fg = C.green },
    }

    catppuccin.command = {
      a = { bg = C.peach, fg = C.base, gui = "bold" },
      b = { bg = C.surface0, fg = C.peach },
    }

    catppuccin.visual = {
      a = { bg = C.mauve, fg = C.base, gui = "bold" },
      b = { bg = C.surface0, fg = C.mauve },
    }

    catppuccin.replace = {
      a = { bg = C.red, fg = C.base, gui = "bold" },
      b = { bg = C.surface0, fg = C.red },
    }

    catppuccin.inactive = {
      a = { bg = transparent_bg, fg = C.blue },
      b = { bg = transparent_bg, fg = C.surface1, gui = "bold" },
      c = { bg = transparent_bg, fg = C.overlay0 },
    }

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = catppuccin,
        component_separators = { left = "│", right = "│" },
        section_separators = { left = "", right = "█" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {
          "branch",
          {
            "diff",
            diff_color = {
              added = {
                fg = "#2da44e",
              },
              modified = {
                fg = "#e16f24",
              },
              removed = {
                fg = "#fa4549",
              },
            },
          },
          "diagnostics",
        },
        lualine_c = { "filename" },
        lualine_x = { "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}
