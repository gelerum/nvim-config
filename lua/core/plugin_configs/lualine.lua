require('lualine').setup {
  options = {
    theme  = require'core.plugin_configs.custom_OceanicNext',
    disabled_filetypes = { 'packer', 'NvimTree' },
    globalstatus = false,
  },
  sections = {
    lualine_c = {"buffers"},
    lualine_x = {}
  },
}
