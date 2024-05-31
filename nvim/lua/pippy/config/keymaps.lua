local opts = { noremap = true, silent = true }
local map = vim.keymap.set

map("n", "<Leader>ex", ":Ex<cr>", opts)
map("n", "<Leader>ec", ":e " .. vim.fn.stdpath("config") .. "/init.lua<CR>", opts)

map('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
