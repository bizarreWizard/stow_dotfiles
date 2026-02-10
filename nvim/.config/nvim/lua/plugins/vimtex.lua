return {
	"lervag/vimtex",
	lazy = false, -- we don't want to lazy load VimTeX
	-- tag = "v2.15", -- uncomment to pin to a specific release
	init = function()
		vim.g.vimtex_view_method = "zathura"
		vim.g.vimtex_view_forward_search_on_start = true
		vim.g.vimtex_view_on_success = 1
		vim.g.vimtex_compile_enabled = 1
		vim.g.vimtex_compiler_latexmk = {
			aux_dir = "~/code/LaTeX/.aux_folder/",
			out_dir = "~/code/LaTeX/out_folder/",
		}
	end,
}
