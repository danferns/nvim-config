return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  opts = {
    options = {
      icons_enabled = true,
      theme = 'catppuccin',
      component_separators = '',
      section_separators = '',
    },
    sections = {
      lualine_b = {},
      lualine_x = { 'progress', 'location' },
      lualine_y = { 'diff', 'branch' },
      lualine_z = {}
    }
  },
}
