require('core.colorscheme')
require('core.plugin_manager')

require('core.plugin_configs')

vim.keymap.set('n', '<C-v>', ':vsplit<CR>', { silent = true })
vim.keymap.set('n', '<C-s>', ':split<CR>', { silent = true })
vim.keymap.set('n', '<C-s>', ':split<CR>', { silent = true })

vim.keymap.set('n', '<C-z>', '<nop>')
vim.keymap.set('n', '<C-z>', ':undo<CR>', { silent = true })
vim.keymap.set('n', '<C-S-z>', ':redo<CR>', { silent = true })

vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', { silent = true })
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', { silent = true })
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', { silent = true })
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { silent = true })
vim.keymap.set('n', '<C-\\>', ':wincmd p<CR>', { silent = true })

vim.keymap.set('n', '<Tab>', ':bn<CR>', { silent = true })
vim.keymap.set('n', '<S-Tab>', ':bp<CR>', { silent = true })
vim.keymap.set('n', '<C-n>', ':enew<CR>', { silent = true })

vim.cmd([[ autocmd BufWritePre * :%s/\s\+$//e ]])

