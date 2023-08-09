require('lualine').setup {
    options = {
        theme                = require 'core.plugin_configs.custom_OceanicNext',
        disabled_filetypes   = { 'packer', 'NvimTree' },
        globalstatus         = true,
        component_separators = { left = '', right = '' },
        section_separators   = { left = '', right = '' },
    },
    sections = {
        lualine_b = {},
        lualine_c = { "buffers" },
        lualine_x = {},
        lualine_y = { 'diagnostics', 'branch', 'diff', 'progress' }
    },
}
