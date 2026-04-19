return {
	{
		"oskarnurm/koda.nvim",
		lazy = false,
		config = function()
			vim.cmd("colorscheme koda")
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
}
