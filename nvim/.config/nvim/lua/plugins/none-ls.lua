return {
	"nvimtools/none-ls.nvim",

	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format.with({
					filetypes = { "c", "cpp" }, -- specifies to attach only to c and cpp files
					extra_args = { "--style={IndentWidth: 4}" }, -- specifies indent width to 4 spaces
				}),
				null_ls.builtins.formatting.ruff,
				null_ls.builtins.formatting.prettier,

				null_ls.builtins.diagnostics.cpplint,
				null_ls.builtins.diagnostics.eslint,
				null_ls.builtins.diagnostics.eslint_d,
				null_ls.builtins.diagnostics.selene,
				null_ls.builtins.diagnostics.ruff,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
