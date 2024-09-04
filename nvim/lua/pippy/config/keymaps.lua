local opts = { noremap = true, silent = true }
local map = vim.keymap.set

-- In case of which-key failure:
map("n", "<Leader>-", ":Ex<cr>", opts)
