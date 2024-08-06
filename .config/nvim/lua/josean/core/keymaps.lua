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
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-d>", "<C-d>zz")
map("n", "n", "nzz")
map("n", "N", "Nzz")

--replace
map("n", "s", "^C")
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map("x", "p", [["_dP]])

--Telescope
map("n", "<leader>fd", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
map("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
map("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
map("n", "<leader>fd", "<cmd> Telescope find_files <cr>", { desc = "telescope find directory" })
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
map("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
map("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
map("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
