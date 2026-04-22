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

-- GENERAL BINDS
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>W", ":wqa<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>Q", ":qa<CR>")
vim.keymap.set("n", "<leader>so", ":so<CR>")

-- PLUGIN INTERFACE BINDS
vim.keymap.set("n", "<leader>l", ":Lazy<CR>")
vim.keymap.set("n", "<leader>m", ":Mason<CR>")
vim.keymap.set("n", "<leader>a", ":Alpha<CR>")

-- THEME BINDS
vim.keymap.set("n", "<leader>tl", ":colorscheme koda-light<CR>")
vim.keymap.set("n", "<leader>td", ":colorscheme koda-dark<CR>")

vim.opt.winborder = "double"

-- LATEX BINDS
--vim.keymap.set("n", "<C-l>l", "i\\begin{itemize}<CR>\\end{itemize}<ESC>O<TAB>\\item ") -- insert list (itemize)
--vim.keymap.set("n", "<C-l>i", "i\\(\\)<ESC>hi  <ESC>i") -- enter inline math mode (from normal mode)
--vim.keymap.set("i", "<C-l>i", "\\(\\)<ESC>hi  <ESC>i") -- enter inline math mode (from insert mode)
--vim.keymap.set("n", "<C-l>c", "i\\[\\]<ESC>hi  <ESC>i") -- enter centered math mode (from normal mode)
--vim.keymap.set("i", "<C-l>c", "\\[\\]<ESC>hi  <ESC>i") -- enter centered math mode (from insert mode)
--vim.keymap.set("i", "<C-i>", "\\textit{}<ESC>i") -- enter italic text
--vim.keymap.set("i", "<C-b>", "\\textbf{}<ESC>i") -- enter bold text
