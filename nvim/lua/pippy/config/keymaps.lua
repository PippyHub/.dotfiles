local opts = { noremap = true, silent = true }
local map = vim.keymap.set

map("n", "<Leader>ex", ":Ex<CR>", opts)
