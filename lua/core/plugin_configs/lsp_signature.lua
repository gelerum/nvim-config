local cfg = {
    doc_lines = 0,
    floating_window = false,
    always_trigger = false,
}
require "lsp_signature".setup(cfg)

vim.keymap.set({ 'i' }, '<C-s>', function()
    require('lsp_signature').toggle_float_win()
end, { silent = true, noremap = true, desc = 'toggle signature' })

