vim.g.mapleader = " "

local custom = require("josean.core.custom")
local map = vim.keymap.set

--general
map({ "n", "i", "v" }, "<C-c>", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd>wa<cr>")
map("n", "<ESC>", "<cmd>nohl<CR><ESC>", { silent = true, noremap = true })
map("n", "<C-c>", "<cmd>nohl<CR><ESC>", { silent = true, noremap = true })

--custom
map("n", "<leader>rn", custom.toggle_relativenumber, { desc = "Toggle relative numbers" })
map("n", "<leader>rt", custom.themeSwitcher, { desc = "Switch theme" })

--insert mode movement
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")
map("i", "<C-h>", "<Left>")
map("i", "<C-l>", "<Right>")

--indentation
map("v", "<", "<gv")
map("v", ">", ">gv")

--centering
map({ "n", "v" }, "<C-u>", "<C-u>zz")
map({ "n", "v" }, "<C-d>", "<C-d>zz")
map("n", "n", "nzz")
map("n", "N", "Nzz")

--replace
map("n", "s", "^C")
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map("x", "p", [["_dP]])

--Telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Find word" })
map("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
map(
  "n",
  "<leader>fd",
  "<cmd>lua require('telescope.builtin').find_files({ hidden = true, no_ignore = true })<cr>",
  { desc = "Find files" }
)
map("n", "<leader>/", "<cmd> Telescope current_buffer_fuzzy_find <cr>", { desc = "search" })

--NvimTree
map("n", "<C-n>", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })

--diagnostics
map("n", "<leader>a", function()
  vim.diagnostic.open_float({ border = "rounded" })
end, { desc = "Diagnostics" })

--git
map("n", "<leader>[", "<cmd> Gitsigns next_hunk <cr>", { desc = "git next hunk" })
map("n", "<leader>]", "<cmd> Gitsigns prev_hunk <cr>", { desc = "git prev hunk" })
map("n", "<leader>p", "<cmd> Gitsigns preview_hunk <cr>", { desc = "git preview hunk" })

-- window management
map("n", "<C-w>h", "<C-w>s", { desc = "Split window horizontally" })
map("n", "<C-w>t", "<C-w>T", { desc = "Break out into new tab" })
map("n", "<C-w>e", "<C-w>=", { desc = "Equal splits" })
map("n", "<leader>we", "<C-w>=", { desc = "Equal splits" })

-- buffers
map("n", "<C-e>", "<cmd> BufferPick <cr>", { desc = "Pick buffer" })
map("n", "<C-t>o", "<cmd> BufferCloseAllButVisible <cr>", { desc = "Close other tabs" })
map("n", "<C-t>q", "<cmd> BufferClose <cr>", { desc = "Close current buffer" })
