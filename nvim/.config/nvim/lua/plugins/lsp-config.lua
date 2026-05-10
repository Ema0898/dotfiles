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
                ensure_installed = { "lua_ls", "clangd", "qmlls", "rust_analyzer" }, -- enables them automatically
            })
        end,
    },
    {
        -- Adds the lsp capabilities to neovim
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config("*", {})
        end,
    },
}
