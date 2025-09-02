require('lualine').setup {
  options = {
    icons_enabled       = true,
    theme               = 'nord',
    section_separators  = { left = '', right = '' },
  },
  sections = {
    lualine_a   = { 'mode' },
    lualine_b   = { 'filename' },
    lualine_c   = {},

    lualine_x   = { 'location' },
    lualine_y   = { 'filetype' },
    lualine_z   = { 'progress' },
  }
}
