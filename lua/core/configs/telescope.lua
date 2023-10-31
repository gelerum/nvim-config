local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-o>', builtin.live_grep, {})
vim.keymap.set('n', '<C-[>', builtin.grep_string, {})
vim.keymap.set('n', '<C-]>', builtin.lsp_references, {})
vim.keymap.set('n', '<C-I>', builtin.treesitter, {})

require("telescope").setup({
    defaults = {
        layout_config = {
            horizontal = {
                preview_cutoff = 0,
            },
        },
    },
})
