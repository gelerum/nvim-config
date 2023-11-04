require('lualine').setup {
    options = {
        disabled_filetypes   = { 'packer', 'NvimTree' },
        globalstatus         = false,
        section_separators   = { left = '', right = '' },
        component_separators = '',
    },
    sections = {
        lualine_a = {
            { 'mode', separator = { left = '' }, right_padding = 2 },
        },
        lualine_b = { 'branch', 'diff' },
        lualine_c = { { "filename", path = 3 } },
        lualine_x = {},
        lualine_y = { 'diagnostics', 'progress' },
        lualine_z = {
            { 'location', separator = { right = '' }, left_padding = 2 },
        },
    },
}
