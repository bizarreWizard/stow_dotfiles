return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {},
	config = function()
		require("toggleterm").setup({
			direction = "float",
			float_opts = {
				border = "double",
			},
			autochdir = true,
		})

		vim.keymap.set("n", "<leader>T", ":ToggleTerm<CR>")
	end,
}
