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
				ensure_installed = { "lua_ls", "clangd", "ts_ls", "qmlls" },
			})
		end,
	},
	{
        -- Adds the lsp capabilities to neovim
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities() -- add the capabilities to the completion engine

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.qmlls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
		end,
	},
}
