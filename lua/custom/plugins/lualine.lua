return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      icons_enabled = true,
      component_separators = '',
      section_separators = { left = '', right = '' },
    },
    sections = {
      lualine_b = { { 'filename', path = 4 }},
      lualine_c = { 'progress', 'location' },
      lualine_x = { 'diagnostics' },
      lualine_y = { 'diff', 'branch' },
      lualine_z = {},
    }
  },
}

