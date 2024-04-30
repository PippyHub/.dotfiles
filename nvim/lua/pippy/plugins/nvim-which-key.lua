return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {

    },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()

        local wk = require("which-key")
        wk.register({
            l = {
                name = "lazy",
                l = { "<cmd>Lazy<cr>", "Open Lazy Menu" },
            },
            f = {
                name = "telescope",
                f = { "<cmd>Telescope find_files<cr>", "Find Files" },
                g = { "<cmd>Telescope git_files<cr>", "Find Git Files" },
                h = { "<cmd>Telescope live_grep<cr>", "Grep" },
            },
            h = {
                name = "harpoon",
                h = { function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, "Open Harpoon Menu" },
                a = { function() harpoon:list():add() end, "Add Harpoon" },
                ["1"] = { function() harpoon:list():select(1) end, "Open Harpoon 1" },
                ["2"] = { function() harpoon:list():select(2) end, "Open Harpoon 2" },
                ["3"] = { function() harpoon:list():select(3) end, "Open Harpoon 3" },
                ["4"] = { function() harpoon:list():select(4) end, "Open Harpoon 4" },
                ["5"] = { function() harpoon:list():select(5) end, "Open Harpoon 5" },
                ["6"] = { function() harpoon:list():select(6) end, "Open Harpoon 6" },
                ["7"] = { function() harpoon:list():select(7) end, "Open Harpoon 7" },
                ["8"] = { function() harpoon:list():select(8) end, "Open Harpoon 8" },
                ["9"] = { function() harpoon:list():select(9) end, "Open Harpoon 9" },
            },
        },
        {
            prefix = "<leader>"
        })

    end,
}
