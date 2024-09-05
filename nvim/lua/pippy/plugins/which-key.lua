return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        preset = "helix",
        spec = {
            mode = { "n" },
            { "<leader>f", group = "File" },
            { "<leader>h", group = "Harpoon" },
            { "<leader>g", group = "Gradle" },

            { "<leader>d", desc = "Dismiss Notifications" },
            { "<Leader>e", desc = "Edit Neovim Config" },
            { "<Leader>l", desc = "Lazy Menu" },
            { "<Leader>t", desc = "Terminal Transperancy" },
            { "<Leader>u", desc = "Toggle Undotree" },
        },
        icons = {
            mappings = false,
        },
        win = {
            no_overlap = true,
            col = 0, -- positions the window on the left side
            -- You can also adjust the width and row if needed
            -- width = 20, -- adjust width as necessary
            -- row = 0, -- set row position if you need to adjust it
            padding = { 1, 2 }, -- extra window padding [top/bottom, right/left]
            title = true,
            title_pos = "center",
            zindex = 1000,
            bo = {},
            wo = {},
        },
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show()
            end,
            desc = "Buffer Local Keymaps" 
        },
    },
}
