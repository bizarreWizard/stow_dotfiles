-- tokyonight colorscheme
return {
    "folke/tokyonight.nvim",    
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        vim.cmd[[colorscheme tokyonight-night]] -- sets tokyonight-night colorscheme
    end
}

