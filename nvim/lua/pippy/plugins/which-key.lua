return {
    "folke/which-key.nvim",
    lazy = false,
    opts = {
        spec = {
            mode = { "n" },
            { "<Leader>-", desc = "Netrw", icon = "" },
            { "<leader>t", "<cmd>silent !iterm -t -to<cr>", desc = "Toggle Terminal Transparency" },
            { "<Leader>e", "<cmd>execute 'edit'.stdpath('config')<cr>", desc = "Edit Neovim Config", icon = "" },

            { "<leader>l", "<cmd>Lazy<cr>", desc = "Lazy Menu", icon = "💤" },

            { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Toggle Undotree" },

            { "<leader>d", "<cmd>Noice dismiss<cr>", desc = "Dismiss Notifications"},

            { "<leader>f", group = "File" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
            { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Git Files" },
            { "<leader>fl", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },

            { "gl", "<cmd>lua vim.diagnostic.open_float()<cr>", desc = "Show Diagnostic" },
            { "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>", desc = "Previous Diagnostic" },
            { "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>", desc = "Next Diagnostic" },
        },
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
}
