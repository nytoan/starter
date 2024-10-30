require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
