-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set('i', 'jk', '<ESC>')
keymap.set("n", "<leader>nh", ":nohl<CR>")
