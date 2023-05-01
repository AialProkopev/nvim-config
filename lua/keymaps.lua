-- -- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- Telescope
keymap.set('n', ',ff', '<cmd>Telescope find_files<cr>')
keymap.set('n', ',fg', '<cmd>Telescope live_grep<cr>')

