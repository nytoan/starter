require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
map("n", "gr", "<cmd>lua require('telescope.builtin').lsp_references()<CR>", { noremap = true, silent = true })
map("n", "gd", "<cmd>lua require('telescope.builtin').lsp_definitions()<CR>", { noremap = true, silent = true })

map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n", "i", "v" }, "<C-s>", "<cmd>wall<cr>")

-- Git
map("n", "<leader>gc", "<cmd>Telescope git_commits<CR>")
map("n", "<leader>gb", "<cmd>Telescope git_branches<CR>")
map("n", "<leader>gdo", "<cmd>DiffviewOpen<CR>")
map("n", "<leader>gdc", "<cmd>DiffviewClose<CR>")
map("n", "<leader>gdh", "<cmd>DiffviewFileHistory<CR>")

-- Rename Symbol
map("n", "<M-r>", "<cmd>lua vim.lsp.buf.rename()<CR>")

-- Move faster with option h/l
map({ "n", "i", "v" }, "<M-h>", "B")
map({ "n", "i", "v" }, "<M-l>", "E")

-- Terminal
map({ "n", "t" }, "<A-x>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal toggleable horizontal term" })

map({ "n", "t" }, "<A-c>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })

map("n", "<M-d>", "<cmd>Trouble diagnostics toggle<CR>")
map("n", "<M-s>", "<cmd>Trouble symbols toggle<CR>")
map("n", "<M-e>", "<cmd>NvimTreeToggle<CR>")

map("i", "<C-S-Del>", "<esc>lce", { desc = "Delete forward word" })

map("n", "<leader>kf", "<cmd>Telescope keymaps<CR>")
map("n", "<leader>kk", "<cmd>WhichKey<CR>")
