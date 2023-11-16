local function on_attach(bufnr)
    local api = require('nvim-tree.api')

    local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end
    api.config.mappings.default_on_attach(bufnr)
    -- Remove keymaps
    vim.keymap.del('n', '<C-e>', { buffer = bufnr })
    -- New keymaps
    vim.keymap.set('n', '<C-n>', ':NvimTreeFocus<CR>', { silent = true })
    vim.keymap.set('n', '<C-e>', ':NvimTreeToggle<CR>', { silent = true })
    vim.keymap.set('n', 'h', api.tree.toggle_hidden_filter, opts('Toggle Dotfiles'))
    vim.keymap.set('n', 'n', api.fs.create, opts('Create'))
end


require("nvim-tree").setup({
    on_attach = on_attach,
})
