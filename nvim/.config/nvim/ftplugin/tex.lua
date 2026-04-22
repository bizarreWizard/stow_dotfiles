-- LATEX BINDS
vim.keymap.set("n", "<C-l>l", "i\\begin{itemize}<CR>\\end{itemize}<ESC>O<TAB>\\item ", {buffer = true}) -- insert list (itemize)
vim.keymap.set("n", "<C-l>i", "i\\(\\)<ESC>hi  <ESC>i", {buffer = true}) -- enter inline math mode (from normal mode)
vim.keymap.set("i", "<C-l>i", "\\(\\)<ESC>hi  <ESC>i", {buffer = true}) -- enter inline math mode (from insert mode)
vim.keymap.set("n", "<C-l>c", "i\\[\\]<ESC>hi  <ESC>i", {buffer = true}) -- enter centered math mode (from normal mode)
vim.keymap.set("i", "<C-l>c", "\\[\\]<ESC>hi  <ESC>i", {buffer = true}) -- enter centered math mode (from insert mode)
vim.keymap.set("i", "<C-i>", "\\textit{}<ESC>i", {buffer = true}) -- enter italic text
vim.keymap.set("i", "<C-b>", "\\textbf{}<ESC>i", {buffer = true}) -- enter bold text
