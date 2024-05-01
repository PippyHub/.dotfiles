local color = 0

colorscheme_cycle = function()
    if color == 0 then 
        vim.cmd[[colorscheme tokyonight]]
        color = color + 1
    elseif color == 1 then
        vim.cmd[[colorscheme nightfox]] 
        color = 0
    end


end
vim.cmd("command! ColorschemeCycle lua colorscheme_cycle()")

