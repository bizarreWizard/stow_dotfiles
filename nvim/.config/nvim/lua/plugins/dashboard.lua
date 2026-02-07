return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-mini/mini.icons" },
	config = function()
		local theta = require("alpha.themes.theta")
		theta.buttons.val = {}
		theta.config.layout = {
			{ type = "padding", val = 2 },
			theta.header,
			{ type = "padding", val = 2 },
			{
				type = "group",
				val = {
					{
						type = "text",
						val = "recent buffers",
						opts = {
							hl = "SpecialComment",
							shrink_margin = false,
							position = "center",
						},
					},
					{ type = "padding", val = 1 },
					{
						type = "group",
						val = function()
							return { theta.mru(0, vim.fn.getcwd()) }
						end,
						opts = { shrink_margin = false },
					},
				},
			},
			{ type = "padding", val = 2 },
			theta.buttons,
		}
		require("alpha").setup(theta.config)
	end,
}
