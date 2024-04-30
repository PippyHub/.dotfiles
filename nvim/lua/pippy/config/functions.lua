local transparent_enabled = false

toggle_transparency = function()
    transparent_enabled = not transparent_enabled
    require('nightfox').setup({
        options = {
            transparent = transparent_enabled,
        } 
    })
    vim.cmd("colorscheme nightfox")
end
vim.cmd("command! ToggleTransparency lua toggle_transparency()")

