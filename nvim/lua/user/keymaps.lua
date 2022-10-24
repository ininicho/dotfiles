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

-- Bbye
vim.keymap.set('n', '<leader>q', ':Bdelete<CR>')

