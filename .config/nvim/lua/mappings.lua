require "nvchad.mappings"

local map = vim.keymap.set

--unbind
map({ "n", "i", "v" }, "<Down>", "<NOP>")
map({ "n", "i", "v" }, "<Up>", "<NOP>")
map({ "n", "i", "v" }, "<Left>", "<NOP>")
map({ "n", "i", "v" }, "<Right>", "<NOP>")

map("n", "<leader>sh", "<NOP>")
map("n", "<leader>ds", "<NOP>")

map("n", "<leader>fz", "<NOP>")
map("n", "<leader>ff", "<NOP>")
map("n", "<leader>cc", "<NOP>")
map("n", "<leader>gt", "<NOP>")

map("i", "<C-p>", "<NOP>")
map("i", "<C-n>", "<NOP>")

--general
map({ "n", "i", "v" }, "<C-c>", "<ESC>")

--indentation
map("v", "<", "<gv")
map("v", ">", ">gv")

--centering
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-d>", "<C-d>zz")
map("n", "n", "nzz")
map("n", "N", "Nzz")

--replace
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map("x", "p", [["_dP]])

--Telescope
map("n", "<leader>fd", "<cmd> Telescope find_files <cr>", { desc = "telescope find directory" })
map("n", "<leader>/", "<cmd> Telescope current_buffer_fuzzy_find <cr>", { desc = "search" })
map("n", "<leader>fg", "<cmd> Telescope git_files <cr>", { desc = "telescope find git files" })

--lsp
map("n", "K", function()
  vim.lsp.buf.hover()
end)

map("n", "<leader>a", function()
  vim.diagnostic.open_float { border = "rounded" }
end, { desc = "Diagnostics" })

map("n", "<leader>lf", function()
  vim.diagnostic.setloclist()
end, { desc = "Error list" })

--git
map("n", "<leader>gs", "<cmd> Telescope git_status <cr>", { desc = "git status" })
map("n", "<leader>gc", "<cmd> Telescope git_commits <cr>", { desc = "git commits" })
