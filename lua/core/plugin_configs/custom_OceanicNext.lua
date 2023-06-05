local colors = {
  color0   = '#d8dee9',
  color1   = '#99c794',
  color2   = '#65737e',
  color3   = '#343d46',
  color4   = '#6699cc',
  color5   = '#d8dee9',
  color6   = '#f99157',
  color7   = '#ec5f67',
  color8   = '#1b2b34',
  magenta  = '#c594c5',
  cyan     = '#62b3b2',
}

return {
  insert = {
    a = { fg = colors.color8, bg = colors.color4, gui = 'bold' },
    b = { fg = colors.color0, bg = colors.color2 },
    c = { fg = colors.color0, bg = colors.color3 },
  },
  normal = {
    a = { fg = colors.color8, bg = colors.color6, gui = 'bold' },
    b = { fg = colors.color0, bg = colors.color2 },
    c = { fg = colors.color0, bg = colors.color3 },
  },
  inactive = {
    a = { fg = colors.color5, bg = colors.color2, gui = 'bold' },
    b = { fg = colors.color5, bg = colors.color3 },
    c = { fg = colors.color2, bg = colors.color3 },
  },
  visual = {
    a = { fg = colors.color8, bg = colors.color1, gui = 'bold' },
    b = { fg = colors.color0, bg = colors.color2 },
    c = { fg = colors.color0, bg = colors.color3 },
  },
  replace = {
    a = { fg = colors.color8, bg = colors.color7, gui = 'bold' },
    b = { fg = colors.color0, bg = colors.color2 },
    c = { fg = colors.color0, bg = colors.color3 },
  },
}
