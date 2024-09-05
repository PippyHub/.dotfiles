return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    keys = {
        { "<leader>h" },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()

        local conf = require("telescope.config").values
        local function ui(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require("telescope.pickers").new({}, {
                prompt_title = "Harpoon",
                finder = require("telescope.finders").new_table({
                    results = file_paths,
                }),
                previewer = conf.file_previewer({}),
                sorter = conf.generic_sorter({}),
            }):find()
        end

        local list = harpoon:list()
        local opts = { noremap = true, silent = true }
        local map = vim.keymap.set

        map('n', '<leader>hh', function() ui(list) end, opts)
        map('n', '<leader>ha', function() list:add() end, opts)
        map('n', '<leader>hm', function() harpoon.ui:toggle_quick_menu(list) end, opts)

        for i = 1, 9 do
            map('n', string.format('<leader>h%d', i), function() list:select(i) end, opts)
        end
    end,
}

