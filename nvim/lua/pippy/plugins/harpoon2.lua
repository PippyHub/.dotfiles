return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = function ()
        local harpoon = require("harpoon")
        harpoon:setup()
        local wk = require("which-key")
        wk.add({
            mode = { "n" },
            { "<leader>h", group = "harpoon" },
            { "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "Open Harpoon Menu" },
            {"<leader>ha", function() harpoon:list():add() end, desc = "Add Harpoon" },
            --["1"] = { function()require("harpoon"):list():select(1) end, "Open Harpoon 1" },
            --["2"] = { function()require("harpoon"):list():select(2) end, "Open Harpoon 2" },
            --["3"] = { function()require("harpoon"):list():select(3) end, "Open Harpoon 3" },
            --["4"] = { function()require("harpoon"):list():select(4) end, "Open Harpoon 4" },
            --["5"] = { function()require("harpoon"):list():select(5) end, "Open Harpoon 5" },
            --["6"] = { function()require("harpoon"):list():select(6) end, "Open Harpoon 6" },
            --["7"] = { function()require("harpoon"):list():select(7) end, "Open Harpoon 7" },
            --["8"] = { function()require("harpoon"):list():select(8) end, "Open Harpoon 8" },
            --["9"] = { function()require("harpoon"):list():select(9) end, "Open Harpoon 9" },
        })
    end,
}
