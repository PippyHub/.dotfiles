return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'L3MON4D3/LuaSnip',
    },

    config = function() 
        local lspconfig = require('lspconfig')
        local mason = require('mason')
        local masonlsp = require('mason-lspconfig')
        local masontool = require('mason-tool-installer')
        local cmp = require('cmp')
        local luasnip = require('luasnip')
        local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

        local default_setup = function(server)
            lspconfig[server].setup({
                capabilities = lsp_capabilities,
            })
        end

        mason.setup({})
        masonlsp.setup({
            handlers = {
                default_setup,
            },
        })
        masontool.setup({})


        cmp.setup({
            sources = {
                {name = 'nvim_lsp'},
            },
            mapping = cmp.mapping.preset.insert({
                -- Enter key confirms completion item
                ['<CR>'] = cmp.mapping.confirm({select = false}),

                -- Ctrl + space triggers completion menu
                ['<C-Space>'] = cmp.mapping.complete(),
            }),
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
        })
    end
}
