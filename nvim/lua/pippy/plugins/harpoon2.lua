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
        require("which-key").add({
            mode = { "n" },
            { "<leader>h", group = "harpoon", icon = "󰛢" },
            { "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "Open Harpoon Menu" },
            { "<leader>ha", function() harpoon:list():add()     end, desc = "Add Harpoon" },
            { "<leader>h1", function() harpoon:list():select(1) end, desc = "Open Harpoon 1" },
            { "<leader>h2", function() harpoon:list():select(2) end, desc = "Open Harpoon 2" },
            { "<leader>h3", function() harpoon:list():select(3) end, desc = "Open Harpoon 3" },
            { "<leader>h4", function() harpoon:list():select(4) end, desc = "Open Harpoon 4" },
            { "<leader>h5", function() harpoon:list():select(5) end, desc = "Open Harpoon 5" },
            { "<leader>h6", function() harpoon:list():select(6) end, desc = "Open Harpoon 6" },
            { "<leader>h7", function() harpoon:list():select(7) end, desc = "Open Harpoon 7" },
            { "<leader>h8", function() harpoon:list():select(8) end, desc = "Open Harpoon 8" },
            { "<leader>h9", function() harpoon:list():select(9) end, desc = "Open Harpoon 9" },
        })
    end,
}
