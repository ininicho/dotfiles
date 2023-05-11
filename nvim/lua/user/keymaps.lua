vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Move text up and down
-- vim.keymap.set('i', '<A-j>', '<Esc>:move .+1<CR>==gi')
-- vim.keymap.set('i', '<A-k>', '<Esc>:move .-2<CR>==gi')
-- vim.keymap.set('x', '<A-j>', ":move '>+1<CR>gv-gv")
-- vim.keymap.set('x', '<A-k>', ":move '<-2<CR>gv-gv")

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Escape Insert mode
vim.keymap.set("i", "jj", "<Esc>")

-- Bbye
vim.keymap.set('n', '<leader>q', ':Bdelete<CR>', { desc = 'Close Buffer' })

-- Vertical Motion
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true })
vim.keymap.set('n', 'n', 'nzz', { noremap = true })
vim.keymap.set('n', 'N', 'Nzz', { noremap = true })

-- Highlight
vim.keymap.set('n', '<leader><space>', ':noh<CR>', { noremap = true })

-- Packer
vim.keymap.set('n', '<leader>pc', ':PackerCompile<CR>')
vim.keymap.set('n', '<leader>ps', ':PackerSync<CR>')
vim.keymap.set('n', '<leader>pu', ':PackerUpdate<CR>')

-- Paste
vim.keymap.set('v', '<leader>p', '"_dP', { noremap = true })

