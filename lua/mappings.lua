require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("v", ">", ">gv", { noremap = true, silent = true })
map("v", "<", "<gv", { noremap = true, silent = true })

map("n", "gr", "<cmd>lua require('telescope.builtin').lsp_references()<CR>", { noremap = true, silent = true })
map("n", "gd", "<cmd>lua require('telescope.builtin').lsp_definitions()<CR>", { noremap = true, silent = true })

map("n", "<leader>ca", "<cmd>lua require('actions-preview').code_actions()<CR>")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fr", "<cmd>Telescope resume<CR>", { desc = "telescope resume search" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n", "i", "v" }, "<C-s>", "<cmd>wall<cr>")

-- Git
map("n", "<leader>gc", "<cmd>Telescope git_commits<CR>")
map("n", "<leader>gb", "<cmd>Telescope git_branches<CR>")

-- Rename Symbol
map("n", "<M-r>", "<cmd>lua vim.lsp.buf.rename()<CR>")
map("n", "gn", "<cmd>lua vim.lsp.buf.rename()<CR>")

-- Move faster with option h/l
map({ "n", "i", "v" }, "<M-h>", "B")
map({ "n", "i", "v" }, "<M-l>", "E")

-- Terminal
map({ "n", "t" }, "<A-x>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal toggleable horizontal term" })

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm", float_opts = { height = 0.8, width = 0.8, row = 0.05, col = 0.1 } }
end, { desc = "terminal toggle floating term" })

map("n", "<leader>oe", "<cmd>NvimTreeToggle<CR>")
map("n", "<leader>of", "<cmd>Telescope flutter commands<CR>")

map("i", "<C-S-Del>", "<esc>lce", { desc = "Delete forward word" })

map("n", "<leader>kf", "<cmd>Telescope keymaps<CR>")
map("n", "<leader>kk", "<cmd>WhichKey<CR>")
