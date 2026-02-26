vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.cmd("set number relativenumber")
vim.cmd("set autoindent")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set smarttab")
vim.cmd("set softtabstop=4")
vim.cmd("set expandtab")
vim.cmd("set mouse=a")
vim.cmd("set nocompatible")
vim.cmd("set wrap")
vim.cmd("set linebreak")

vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>W", ":wqa<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>Q", ":qa<CR>")
vim.keymap.set("n", "<leader>so", ":so<CR>")

vim.keymap.set("n", "<leader>l", ":Lazy<CR>")
vim.keymap.set("n", "<leader>m", ":Mason<CR>")
vim.keymap.set("n", "<leader>a", ":Alpha<CR>")

vim.keymap.set("n", "<leader>tl", ":colorscheme koda-light<CR>")
vim.keymap.set("n", "<leader>td", ":colorscheme koda-dark<CR>")

vim.opt.winborder = "double"
