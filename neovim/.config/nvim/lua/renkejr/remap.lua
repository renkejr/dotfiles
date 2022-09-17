local nnoremap = require("renkejr.keymap").nnoremap

-- Quicker window movement.
nnoremap("<leader>e", "<cmd>NvimTreeToggle<CR>")
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-l>", "<C-w>l")

-- Common file operations.
nnoremap("<C-s>", "<cmd>w<CR>")
