vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "<Down>", "<C-d>zz")
vim.keymap.set("n", "<Up>", "<C-u>zz")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<leader>w", "<cmd>w<cr>")

vim.keymap.set("v", "<leader>/", "I// <Esc>")
vim.keymap.set("v", "<leader>u/", "<cmd>'<,'>s/\\/\\/ //g<cr><Esc>")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
