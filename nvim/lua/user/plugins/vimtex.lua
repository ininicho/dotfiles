vim.cmd [[syntax enable]]
vim.cmd [[let g:vimtex_view_method = 'zathura']]
vimtex_view_method = 'zathura'
-- vimtex_compiler_method = 'pdflatex'


vim.keymap.set('n', '<leader>lc', '<plug>(vimtex-clean)', { desc = 'Clean' })
vim.keymap.set('n', '<leader>lC', '<plug>(vimtex-clean-full)', { desc = 'Clean Full' })
vim.keymap.set('n', '<leader>ll', '<plug>(vimtex-compile)', { desc = 'Compile' })
vim.keymap.set('n', '<leader>lv', '<plug>(vimtex-view)', { desc = 'View' })
vim.keymap.set('n', '<leader>ls', '<plug>(vimtex-stop)', { desc = 'Stop' })
vim.keymap.set('n', '<leader>lS', '<plug>(vimtex-stop-all)', { desc = 'Stop All' })

