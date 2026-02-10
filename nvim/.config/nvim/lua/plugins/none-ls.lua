return {
	"nvimtools/none-ls.nvim",

	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			debug = true,

			sources = {
				-- linting and diagnostics
				null_ls.builtins.diagnostics.mypy,
				null_ls.builtins.diagnostics.pylint,
				null_ls.builtins.diagnostics.cppcheck,
				-- null_ls.builtins.diagnostics.selene, -- will throw warnings for mixed tables

				-- formatting
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format.with({
					filetypes = { "c", "cpp" }, -- specifies to attach only to c and cpp files
					extra_args = { "--style={IndentWidth: 4}" }, -- specifies indent width to 4 spaces
				}),
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.prettier,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
