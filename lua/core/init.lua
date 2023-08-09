require('core.colorscheme')
require('core.plugin_manager')
require('core.lsp')

require('core.plugin_configs')

vim.keymap.set('n', '<C-v>', ':vsplit<CR>', { silent = false })
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
vim.keymap.set('n', '<C-w>', ':bd | bp <CR>', { silent = true })

vim.keymap.set({ 'n', 'v' }, 'x', '"_x')
vim.keymap.set({ 'n', 'v' }, 'd', '"_d')
vim.keymap.set({ 'n', 'v' }, 'D', '"_D')

vim.keymap.set({ 'n', 'v' }, '<space>x', 'x')
vim.keymap.set({ 'n', 'v' }, '<space>d', 'd')
vim.keymap.set({ 'n', 'v' }, '<space>D', 'D')

vim.keymap.set({ 'n', 'v' }, 'x', '"_x')
vim.keymap.set({ 'n', 'v' }, 'd', '"_d')
vim.keymap.set({ 'n', 'v' }, 'D', '"_D')




vim.cmd([[ autocmd BufWritePre * :%s/\s\+$//e ]])
