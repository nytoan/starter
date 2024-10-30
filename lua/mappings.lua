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

-- Remapper les touches pour déplacer les lignes
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { desc = 'Move line down' }) -- Alt + j pour descendrej
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { desc = 'Move line up' })   -- Alt + k pour monter
