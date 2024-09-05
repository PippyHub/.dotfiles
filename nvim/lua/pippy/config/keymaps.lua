local opts = { noremap = true, silent = true }
local map = vim.keymap.set

map("n", "-", ":Ex<cr>", opts)

map("n", "<leader>t", "<cmd>silent !iterm -t -to<cr>", opts)
map("n", "<Leader>e", "<cmd>execute 'edit'.stdpath('config')<cr>", opts)
map("n", "<leader>l", "<cmd>Lazy<cr>", opts)
map("n", "<leader>u", "<cmd>UndotreeToggle<cr>", opts)
map("n", "<leader>d", "<cmd>Noice dismiss<cr>", opts)

-- File management
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope git_files<cr>", opts)
map("n", "<leader>fl", "<cmd>Telescope live_grep<cr>", opts)

-- Diagnostics
map("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>", opts)
map("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)
map("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>", opts)
