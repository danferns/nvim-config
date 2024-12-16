require('plugins')

-- Theme settings
require("rose-pine").setup({
  dim_inactive_windows = true,
})

vim.cmd.colorscheme "rose-pine"

require('telescopeConfig')
require('treesitter')
require('lsp')

require('remaps')
require('settings')

-- register which-key VISUAL mode
-- required for visual <leader>hs (hunk stage) to work
require('which-key').register({
  ['<leader>'] = { name = 'VISUAL <leader>' },
  ['<leader>h'] = { 'Git [H]unk' },
}, { mode = 'v' })


