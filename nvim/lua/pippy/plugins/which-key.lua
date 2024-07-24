local function get_transparency()
    local result = vim.fn.system("iterm -t -get")
    return tonumber(result:match("%S+"))
end

return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        spec = {
            mode = { "n" },
            { "<leader>l", "<cmd>Lazy<cr>", desc = "Lazy Menu" },

            { "<leader>f", group = "file" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
            { "<leader>fg", "<cmd>Telescope git_files<cr>", desc ="Find Git Files" },
            { "<leader>fl", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },

            { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Toggle Undotree" },

            { "<leader>T", function()
                local transparency = (tonumber(string.format("%.1f", get_transparency())) == 0.2) and 0 or 0.2
                vim.cmd(string.format("silent !iterm -t %.1f", transparency))
            end, desc = "Toggle Terminal Transparency" },

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

