local options = {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = false,
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = {},
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  renderer = {
    root_folder_label = false,
    icons = {
      glyphs = {
        git = {
          ignored = "✺",
        },
      },
    },
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  },
}

require("nvim-tree").setup(options)
