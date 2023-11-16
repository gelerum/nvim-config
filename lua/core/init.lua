-- format on save
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])
-- trim last spaces
vim.cmd([[ autocmd BufWritePre * :%s/\s\+$//e ]])
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<space>d', vim.lsp.buf.type_definition, opts)
        -- vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'S', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<A-r>', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '<A-f>', function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})

vim.o.termguicolors = true
vim.cmd([[ syntax off ]])

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.signcolumn = "no"

vim.opt.clipboard = 'unnamedplus'

-- Search
vim.opt.ignorecase = true
vim.keymap.set('n', '<esc>', ':noh<CR>', { silent = true })
-- vim.keymap.set('n', '<C-f>', '/', { silent = false })
-- vim.keymap.set({ 'n', 'v' }, '/', '<nop>')

vim.keymap.set({ 'n', 'v' }, 'u', '<nop>')

vim.keymap.set({ 'n', 'v' }, 'j', 'gj')
vim.keymap.set({ 'n', 'v' }, 'k', 'gk')
vim.keymap.set({ 'n', 'v' }, 'gj', 'j')
vim.keymap.set({ 'n', 'v' }, 'gk', 'k')

vim.keymap.set({ 'n', 'v' }, 'x', '"_x')
vim.keymap.set({ 'n', 'v' }, 'd', '"_d')
vim.keymap.set({ 'n', 'v' }, 'D', '"_D')

vim.keymap.set('v', 't', 'd')
vim.keymap.set('n', 'tt', 'dd')
vim.keymap.set({ 'n', 'v' }, 'T', 'D')

vim.keymap.set({ 'n', 'v' }, 'c', '"_c')
vim.keymap.set({ 'n', 'v' }, 'C', '"_C')

vim.keymap.set({ 'v' }, 'p', 'P')
vim.keymap.set({ 'v' }, 'P', '"0p')

vim.keymap.set('n', '<C-z>', '<nop>')
vim.keymap.set('n', '<C-z>', ':undo<CR>', { silent = true })
vim.keymap.set('n', '<C-S-z>', ':redo<CR>', { silent = true })
vim.keymap.set('n', '<C-s>', ':w<CR>', { silent = true })
-- doesn't work vim.keymap.set('n', '<C-S-s>', ':wa<CR>', { silent = true })

-- Splits
vim.keymap.set('n', '<C-h>', '<Cmd>wincmd h<CR>', { silent = true })
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', { silent = true })
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', { silent = true })
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { silent = true })
vim.keymap.set('n', '<C-\\>', ':wincmd p<CR>', { silent = true })
-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { silent = true })
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>', { silent = true })
vim.keymap.set('n', '<C-t>', ':enew<CR>', { silent = true })
vim.keymap.set('n', '<C-w>', ':bd | bp <CR>', { silent = true })
