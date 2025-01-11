---- set leader key to space
vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

-- exit insert mode using jj 
vim.keymap.set("i", "jj", "<ESC>")

-- Delete Single Character without Copying into Register
vim.keymap.set("n", "x", '"_x')

-- Increment/Decrement Numbers
vim.keymap.set("n", "<leader>+", "<C-a>") -- increment
vim.keymap.set("n", "<leader>-", "<C-x>") -- decrement
