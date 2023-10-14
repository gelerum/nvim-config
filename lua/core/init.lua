require('core.file_tree')
require('core.search')
require('core.statusline')
require('core.lsp')

vim.api.nvim_command(
'set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz')
-- disable welcome screen
vim.opt.shm = vim.opt.shm + 'I'
-- automatically go to a next line after the last character
vim.opt.whichwrap = vim.opt.whichwrap + 'h,l'
-- autocenter cursor line
vim.opt.scrolloff = 999

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.opt.number = true
vim.opt.signcolumn = "no"
vim.opt.expandtab = true
vim.opt.clipboard = 'unnamedplus'
-- Search
vim.opt.ignorecase = true
vim.keymap.set('n', '<esc>', ':noh<CR>', { silent = true })
vim.keymap.set('n', '<C-f>', '/', { silent = false })

-- format on save
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])
-- trim last spaces
vim.cmd([[ autocmd BufWritePre * :%s/\s\+$//e ]])


vim.keymap.set({ 'n', 'v' }, 'x', '"_x')
vim.keymap.set({ 'n', 'v' }, 'd', '"_d')
vim.keymap.set({ 'n', 'v' }, 'D', '"_D')

vim.keymap.set({ 'n', 'v' }, '<space>x', 'x')
vim.keymap.set({ 'n', 'v' }, '<space>d', 'd')
vim.keymap.set({ 'n', 'v' }, '<space>D', 'D')

vim.keymap.set({ 'n', 'v' }, 'x', '"_x')
vim.keymap.set({ 'n', 'v' }, 'd', '"_d')
vim.keymap.set({ 'n', 'v' }, 'D', '"_D')

vim.keymap.set({ 'n', 'v' }, 'c', '"_c')
vim.keymap.set({ 'n', 'v' }, 'C', '"_C')

vim.keymap.set({ 'v' }, 'p', 'P')
vim.keymap.set({ 'v' }, 'P', '"0p')

-- vim.keymap.set({ 'v', 'n' }, 'c', 'P')
-- vim.keymap.set({ 'v', 'n' }, 'P', '"0p')

vim.keymap.set('n', '<C-z>', '<nop>')
vim.keymap.set('n', '<C-z>', ':undo<CR>', { silent = true })
vim.keymap.set('n', '<C-S-z>', ':redo<CR>', { silent = true })
vim.keymap.set('n', '<C-s>', ':w<CR>', { silent = true })
vim.keymap.set('n', '<C-S-s>', ':wa<CR>', { silent = true })

-- Splits
vim.keymap.set('n', '<C-h>', '<Cmd>wincmd h<CR>', { silent = true })
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', { silent = true })
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', { silent = true })
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { silent = true })
vim.keymap.set('n', '<C-\\>', ':wincmd p<CR>', { silent = true })
-- Buffers
vim.keymap.set('n', '<C-Tab>', ':bnext<CR>', { silent = true })
vim.keymap.set('n', '<C-S-Tab>', ':bprev<CR>', { silent = true })
vim.keymap.set('n', '<C-t>', ':enew<CR>', { silent = true })
vim.keymap.set('n', '<C-w>', ':bd | bp <CR>', { silent = true })
