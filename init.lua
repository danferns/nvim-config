-- Daniel's Neovim config, based on Kickstart.nvim

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('plugins')

-- Theme settings
require("rose-pine").setup({
  dim_inactive_windows = true,
})

vim.cmd.colorscheme "rose-pine"

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

require('telescopeConfig')
require('treesitter')
require('lsp')


-- register which-key VISUAL mode
-- required for visual <leader>hs (hunk stage) to work
require('which-key').register({
  ['<leader>'] = { name = 'VISUAL <leader>' },
  ['<leader>h'] = { 'Git [H]unk' },
}, { mode = 'v' })

-- App specific config
require('apps.neovide')

require('remaps')
require('settings')


-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
