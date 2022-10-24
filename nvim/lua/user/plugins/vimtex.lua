vim.cmd [[syntax enable]]
vim.cmd [[let g:vimtex_view_method = 'zathura']]
vimtex_view_method = 'zathura'
-- vimtex_compiler_method = 'pdflatex'


vim.keymap.set('n', '<leader>lc', '<plug>(vimtex-clean)')
vim.keymap.set('n', '<leader>lC', '<plug>(vimtex-clean-full)')
vim.keymap.set('n', '<leader>ll', '<plug>(vimtex-compile)')
vim.keymap.set('n', '<leader>lv', '<plug>(vimtex-view)')
vim.keymap.set('n', '<leader>ls', '<plug>(vimtex-stop)')
vim.keymap.set('n', '<leader>lS', '<plug>(vimtex-stop-all)')

