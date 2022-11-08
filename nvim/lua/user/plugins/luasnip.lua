local luasnip = require('luasnip')

luasnip.config.set_config({
  enable_autosnippets = true,
  store_selection_keys = '<Tab>',
})

-- Load all snippets from the nvim/LuaSnip directory at startup
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/lua/user/LuaSnip/"})

-- Lazy-load snippets, i.e. only load when required, e.g. for a given filetype
require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/lua/user/LuaSnip/"})

-- press <Tab> to expand or jump in a snippet. These can also be mapped separately
-- via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
-- imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
vim.keymap.set('i', '<Tab>', "luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'",
  { silent = true, expr = true })
-- -1 for jumping backwards.
-- inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>
vim.keymap.set('i', '<S-Tab>', ":lua require('luasnip').jump(-1)<Cr>", { noremap = true, silent = true })

-- snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
-- snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>
vim.keymap.set('s', '<Tab>', ":lua require('luasnip').jump(1)<Cr>", { noremap = true, silent = true })
vim.keymap.set('s', '<S-Tab>', ":lua require('luasnip').jump(-1)<Cr>", { noremap = true, silent = true })

-- For changing choices in choiceNodes (not strictly necessary for a basic setup).
-- imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
-- smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

-- Reload snippets
vim.keymap.set('n', '<Leader>lu', '<Cmd>lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/lua/user/LuaSnip/"})<CR>')

