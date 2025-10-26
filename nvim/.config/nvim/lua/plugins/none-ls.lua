return {
	-- wraps lint and formatting tools inside a lsp that can be attached to a buffer
	"nvimtools/none-ls.nvim",
    dependencies = { "nvimtools/none-ls-extras.nvim" },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,
				require("none-ls.diagnostics.cpplint"),
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
