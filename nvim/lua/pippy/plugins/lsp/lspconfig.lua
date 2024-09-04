return {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'L3MON4D3/LuaSnip',
    },
    config = function()
        local lsp = require('lspconfig')
        local mason = require('mason')
        local masonlsp = require('mason-lspconfig')
        local masontool = require('mason-tool-installer')
        local cmp = require('cmp')
        local luasnip = require('luasnip')
        local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

        local default_setup = function(server)
            if server ~= 'jdtls' then
                lsp[server].setup({
                    capabilities = lsp_capabilities,
                })
            end
        end

        mason.setup({
            ensure_installed = {
                "java-debug-adapter",
                "java-test",
            },
        })

        masonlsp.setup({
            ensure_installed = {
                "clangd",
                "cmake",
                "cmake",
                "jdtls",
                "kotlin_language_server",
                "lua_ls",
            },
            handlers = {
                default_setup,
            },
        })

        masontool.setup({})

        cmp.setup({
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            sources = {
                {name = 'nvim_lsp'},
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<Tab>'] = cmp.mapping.confirm({ select = true }),
            }),
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
        })
    end
}
