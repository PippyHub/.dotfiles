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

        require("which-key").add({
            mode = { "n" },
            { "<leader>h", group = "harpoon", icon = "󰛢" },
            { "<leader>hh", function() ui(list)         end, desc = "Open Harpoon Menu" },
            { "<leader>ha", function() list:add()       end, desc = "Add Harpoon"       },
            { "<leader>h1", function() list:select(1)   end, desc = "Open Harpoon 1"    },
            { "<leader>h2", function() list:select(2)   end, desc = "Open Harpoon 2"    },
            { "<leader>h3", function() list:select(3)   end, desc = "Open Harpoon 3"    },
            { "<leader>h4", function() list:select(4)   end, desc = "Open Harpoon 4"    },
            { "<leader>h5", function() list:select(5)   end, desc = "Open Harpoon 5"    },
            { "<leader>h6", function() list:select(6)   end, desc = "Open Harpoon 6"    },
            { "<leader>h7", function() list:select(7)   end, desc = "Open Harpoon 7"    },
            { "<leader>h8", function() list:select(8)   end, desc = "Open Harpoon 8"    },
            { "<leader>h9", function() list:select(9)   end, desc = "Open Harpoon 9"    },
        })
    end,
}
