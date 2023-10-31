require('lualine').setup {
    options = {
        disabled_filetypes = { 'packer', 'NvimTree' },
        globalstatus       = false,
    },
    sections = {
        lualine_b = {},
        lualine_c = { { "filename", path = 3 } },
        lualine_x = {},
        lualine_y = { 'diagnostics', 'branch', 'diff', 'progress' }
    },
}
