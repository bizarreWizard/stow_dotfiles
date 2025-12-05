-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- editor settings
vim.cmd("set number relativenumber")
vim.cmd("set autoindent")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set smarttab")
vim.cmd("set softtabstop=4")
vim.cmd("set expandtab")
vim.cmd("set mouse=a")

-- Setup lazy.nvim
require("lazy").setup({
    spec = {
    -- add your plugins here
        {
        "folke/tokyonight.nvim",    -- tokyonight colorscheme
        lazy = false,
        priority = 1000,
        opts = {},
        },

        {
        'nvim-telescope/telescope.nvim', -- telescope (find files and live grep)
        tag = 'v0.2.0',
        dependencies = { 'nvim-lua/plenary.nvim' }
        },

        {
        "nvim-treesitter/nvim-treesitter", -- treesitter (language parser and highlighter)
        branch = 'master', 
        lazy = false, 
        build = ":TSUpdate"
        }
    },
  
    -- Configure any other settings here. See the documentation for more details.
    -- colorscheme that will be used when installing plugins.
    install = { colorscheme = { "habamax" } },
    -- automatically check for plugin updates
    checker = { enabled = true },
})

vim.cmd[[colorscheme tokyonight-night]] -- sets tokyonight-night colorscheme

local builtin = require('telescope.builtin') -- telescope keymap configuration
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

require'nvim-treesitter.configs'.setup { -- nvim-treesitter configuration
    ensure_installed = { "c", "cpp", "python", "javascript", "lua", "vim", "vimdoc", "markdown" },
    highlight = {enable = true},
    indent = {enable = true},
}
