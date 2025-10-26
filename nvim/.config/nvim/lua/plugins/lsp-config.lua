return {
    {
        -- installs the needed lsp servers
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        -- bridge between mason and lspconfig
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd", "ts_ls", "qmlls" }, -- enables them automatically
            })
        end,
    },
    {
        -- Adds the lsp capabilities to neovim
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities() -- add the capabilities to the completion engine

            vim.lsp.config("*", {
                capabilities = capabilities,
            })
        end,
    },
}
