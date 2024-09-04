local colors = {
    crust = '#11111b',
    mauve = '#cba6f7',
    blue = '#89b4fa',
    sapphire = '#74c7ec',
    red = '#f38ba8',
    background_color = '#f5c2e7'
}

local cattpuccin = {
    normal = {
        a = { fg = colors.crust, bg = colors.mauve },
        b = { fg = colors.crust, bg = colors.background_color },
        c = { fg = colors.crust },
    },

    insert  = { a = { fg = colors.crust, bg = colors.blue } },
    visual  = { a = { fg = colors.crust, bg = colors.sapphire } },
    replace = { a = { fg = colors.crust, bg = colors.red } },

    inactive = {
        a = { fg = colors.text, bg = colors.crust },
        b = { fg = colors.text, bg = colors.crust },
        c = { fg = colors.text },
    },
}

return {
    'nvim-lualine/lualine.nvim',
    event = "VeryLazy",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        options = {
            theme = cattpuccin,
            component_separators = '',
            section_separators = { left = '', right = '' },
        },
        sections = {
            lualine_a = { { 'mode', right_padding = 2 } },
            lualine_b = { 'filename', 'branch' },
            lualine_c = { },
            lualine_x = { },
            lualine_y = { 'filetype', 'progress' },
            lualine_z = { { 'location', left_padding = 2 }, },
        },
        inactive_sections = {
            lualine_a = { 'filename' },
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = { 'location' },
        },
        tabline = {},
        extensions = {},
    },
}
