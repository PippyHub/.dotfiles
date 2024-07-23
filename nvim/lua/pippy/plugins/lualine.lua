local colors = {
    blue   = '#89b4fa',
    sapphire   = '#74c7ec',
    crust  = '#11111b',
    text  = '#cdd6f4',
    red    = '#f38ba8',
    mauve = '#cba6f7',
    base = '#1e1e2e',
}

local cattpuccin = {
    normal = {
        a = { fg = colors.crust, bg = colors.mauve },
        b = { fg = colors.text, bg = colors.base },
        c = { fg = colors.text },
    },

    insert = { a = { fg = colors.crust, bg = colors.blue } },
    visual = { a = { fg = colors.crust, bg = colors.sapphire } },
    replace = { a = { fg = colors.crust, bg =colors.red } },

    inactive = {
        a = { fg = colors.text, bg = colors.crust },
        b = { fg = colors.text, bg = colors.crust },
        c = { fg = colors.text },
    },
}

return {
    'nvim-lualine/lualine.nvim',
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
            lualine_c = {
                '%=', --[[ add your center compoentnts here in place of this comment ]]
            },
            lualine_x = {},
            lualine_y = { 'filetype', 'progress' },
            lualine_z = {
                { 'location', left_padding = 2 },
            },
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
