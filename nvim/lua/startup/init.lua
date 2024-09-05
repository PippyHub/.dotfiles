local buf_setup = function()
    vim.cmd('enew')
    vim.bo.buftype = 'nofile'
    vim.bo.filetype = 'startup'
    vim.wo.relativenumber = false vim.wo.number = false
    vim.o.laststatus = 0
end

local opts = {}
local theme = {}

local function align_content(content, alignment, padding)
    local aligned_content = {}
    local width = vim.api.nvim_win_get_width(0)

    for _ = 1, padding do
        table.insert(aligned_content, 1, "")
    end

    for _, line in ipairs(content) do
        local line_width = vim.fn.strdisplaywidth(line)
        if alignment == 'center' then
            local spaces = math.max(0, math.floor((width - line_width) / 2))
            table.insert(aligned_content, string.rep(" ", spaces) .. line)
        elseif alignment == 'right' then
            local spaces = math.max(0, width - line_width)
            table.insert(aligned_content, string.rep(" ", spaces) .. line)
        elseif alignment == 'left' then
            table.insert(aligned_content, line)
        end
    end

    return aligned_content
end

local draw = function()
    vim.bo.modifiable = true

    local content = theme.content or 'no content'
    local alignment = theme.alignment or 'left'
    local padding = theme.padding or 0
    local color = theme.color or 'ffffff'

    local aligned_content = align_content(content, alignment, padding)

    local highlight_group = 'StartupScreen'
    vim.api.nvim_set_hl(0, highlight_group, { fg = '#' .. color })

    vim.api.nvim_buf_set_lines(0, 0, -1, false, aligned_content)

    for i = 0, #aligned_content - 1 do
        vim.api.nvim_buf_add_highlight(0, -1, highlight_group, i, 0, -1)
    end

    vim.bo.modifiable = false
end

_G.startup = function(config)
    opts = config or {}
    local directory = opts.directory or 'startup.themes'

    theme = require(directory .. '.' .. opts.theme)

    if vim.fn.bufname('%') ~= '' then
        return
    end

    buf_setup()
    draw()
end

local cmd = vim.api.nvim_create_autocmd

cmd('VimEnter', {
    desc = 'Run startup file when nvim opens',
    callback = function()
        _G.startup({
            theme = 'melody',
            directory = nil, -- lua.startup.themes by default
        })
    end,
})

cmd('BufLeave', {
    callback = function()
        if vim.bo.filetype == 'startup' then
            vim.wo.number = true
            vim.wo.relativenumber = true
        end
    end,
})
