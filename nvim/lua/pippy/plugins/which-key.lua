return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        preset = "modern",
        spec = {
            mode = { "n" },
            { "<leader>l", "<cmd>Lazy<cr>", desc = "Lazy Menu" },

            { "<leader>f", group = "file" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
            { "<leader>fg", "<cmd>Telescope git_files<cr>", desc ="Find Git Files" },
            { "<leader>fl", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },

            { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Toggle Undotree" },
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
