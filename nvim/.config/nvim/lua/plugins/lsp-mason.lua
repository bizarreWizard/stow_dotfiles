return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
                    -- lua
					"lua_ls",
                    "stylua",
                    -- c/c++
					"clangd", -- should be paired with clang-format
                    -- python
                    "basedpyright", -- should be paired with isort and mypy
					"ruff",
                    -- latex
					"texlab",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.diagnostic.show()
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
