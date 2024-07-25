local function codeium()
  local value = vim.api.nvim_call_function("codeium#GetStatusString", {})

  if value == ' ON' then
    return ' '
  elseif value == 'OFF' then
    return false
  else
    return value
  end
end

local function codeium_cond()
  return vim.api.nvim_call_function("codeium#GetStatusString", {}) ~= 'OFF'
end

return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  opts = {
    options = {
      icons_enabled = true,
      component_separators = '',
      section_separators = { left = '', right = '' },
    },
    sections = {
      lualine_b = { { 'filename', path = 4 }},
      lualine_c = { 'progress', 'location' },
      lualine_x = { 'diagnostics' },
      lualine_y = { 'diff', 'branch' },
      lualine_z = { {codeium,
        cond = codeium_cond
      }
      }
    }
  },
}

