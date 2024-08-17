vim.g.mapleader = " "

local custom = require("josean.core.custom")
local map = vim.keymap.set

--unbind
map({ "n", "i", "v" }, "<Down>", "<NOP>")
map({ "n", "i", "v" }, "<Up>", "<NOP>")
map({ "n", "i", "v" }, "<Left>", "<NOP>")
map({ "n", "i", "v" }, "<Right>", "<NOP>")

map("i", "<C-p>", "<NOP>")
map("i", "<C-n>", "<NOP>")

--general
map({ "n", "i", "v" }, "<C-c>", "<ESC>")
map({ "n", "i", "v" }, "<ESC>", "<cmd>nohl<CR><ESC>")
map({ "n", "i", "v" }, "<C-c>", "<cmd>nohl<CR><ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd>wa<cr>")

--custom
map("n", "<leader>rn", custom.toggle_relativenumber, { desc = "Toggle relative numbers" })
map("n", "<leader>t", custom.themeSwitcher, { desc = "Switch theme" })

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
map("n", "<leader>fd", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Find recent files" })
map("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Find word" })
map("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
map(
  "n",
  "<leader>fa",
  "<cmd>lua require('telescope.builtin').find_files({ hidden = true, no_ignore = true })<cr>",
  { desc = "Find all files" }
)
map("n", "<leader>/", "<cmd> Telescope current_buffer_fuzzy_find <cr>", { desc = "search" })
map("n", "<leader>fg", "<cmd> Telescope git_files <cr>", { desc = "telescope find git files" })

--NvimTree
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "Focus file explorer" })
map("n", "<C-n>", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })

--diagnostics
map("n", "<leader>a", function()
  vim.diagnostic.open_float({ border = "rounded" })
end, { desc = "Diagnostics" })

--git
map("n", "<leader>gs", "<cmd> Telescope git_status <cr>", { desc = "git status" })
map("n", "<leader>gc", "<cmd> Telescope git_commits <cr>", { desc = "git commits" })

-- window management
map("n", "<leader>v", "<C-w>v", { desc = "Split window vertically" })
map("n", "<leader>h", "<C-w>s", { desc = "Split window horizontally" })
map("n", "<leader>we", "<C-w>=", { desc = "Equal splits" })
