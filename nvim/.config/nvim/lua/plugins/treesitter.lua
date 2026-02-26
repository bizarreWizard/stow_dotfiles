return {
	"nvim-treesitter/nvim-treesitter", -- treesitter (language parser and highlighter)
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"c",
				"cpp",
				"python",
				"javascript",
				"lua",
				"vim",
				"vimdoc",
				"markdown",
				"markdown_inline",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
