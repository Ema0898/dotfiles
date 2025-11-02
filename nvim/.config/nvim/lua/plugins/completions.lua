return {
    {
        -- displays the built-in lsp completions offered by the attached lsp
        "hrsh7th/cmp-nvim-lsp",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            { "folke/lazydev.nvim",                  opts = {} }, -- fixes core vim options on lua files
        },
    },
    {
        "L3MON4D3/LuaSnip",        -- source for snippets and expansion tool
        dependencies = {
            "saadparwaiz1/cmp_luasnip", -- completion engine for lua snip. It also adds the auto completion to the code when the snippet/completion is selected
            "rafamadriz/friendly-snippets", -- add vscode snippets
        },
    },
    {
        -- powers the window where the completions are displayed
        "hrsh7th/nvim-cmp",
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()

            local cmp = require("cmp")

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                -- popup window
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-k>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "c" }), -- previous suggestion
                    ["<C-j>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "c" }), -- next suggestion
                    ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "buffer" },
                    { name = "path" }, -- file system paths
                }),
            })
        end,
    },
}
