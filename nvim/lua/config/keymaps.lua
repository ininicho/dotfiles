-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Move text up and down
vim.keymap.set("n", "<A-j>", "j")
vim.keymap.set("n", "<A-k>", "k")
vim.keymap.set("i", "<A-j>", "<esc>j")
vim.keymap.set("i", "<A-k>", "<esc>k")
vim.keymap.set("v", "<A-j>", "<esc>j")
vim.keymap.set("v", "<A-k>", "<esc>k")

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Escape Insert mode
vim.keymap.set("i", "jj", "<Esc>l")

-- Bbye
vim.keymap.set("n", "<leader>q", ":Bdelete<CR>", { desc = "Close Buffer" })

-- Vertical Motion
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })
vim.keymap.set("n", "n", "nzz", { noremap = true })
vim.keymap.set("n", "N", "Nzz", { noremap = true })

-- Highlight
vim.keymap.set("n", "<leader><space>", ":noh<CR>", { noremap = true })

-- Paste
vim.keymap.set("v", "<leader>p", '"_dP', { noremap = true })

-- Man
vim.keymap.set("n", "<leader>mm", ":vertical Man ")
