-- Daniel's Neovim config, based on Kickstart.nvim

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('plugins')

-- Theme settings
require("catppuccin").setup({
  dim_inactive = {
    enabled = true
  },
  styles = {
    comments = {},
    conditionals = {},
    keywords = { "italic" },
  },
  color_overrides = {
    mocha = {
      base = "#151515",
      mantle = "#202020",
      crust = "#151515",
    }
  },
  integrations = {
    telescope = {
      enabled = true,
      style = "nvchad"
    }
  }
})

vim.cmd.colorscheme "catppuccin"

require('settings')
require('remaps')

-- App specific config
require('apps.neovide')

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

require('telescope')
require('treesitter')
require('lsp')


-- register which-key VISUAL mode
-- required for visual <leader>hs (hunk stage) to work
require('which-key').register({
  ['<leader>'] = { name = 'VISUAL <leader>' },
  ['<leader>h'] = { 'Git [H]unk' },
}, { mode = 'v' })


-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
