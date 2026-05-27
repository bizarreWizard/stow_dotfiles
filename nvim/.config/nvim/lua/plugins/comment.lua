return {
	"numToStr/Comment.nvim",
	opts = {},
	config = function()
		require("Comment").setup()
	end,
}

-- 'gc' to start comment procedure
-- arguments after 'gc' work as normal vim motions
-- e.g. 'gcG' to comment until end of file
-- e.g. 'gcgg' to comment until start of file
-- e.g. 'gcj' to comment current line and next line
--
-- NOTE: 'gcc' to comment a single line
