-- Daniel's Neovim config, based on Kickstart.nvim

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

if vim.g.vscode then
  require('apps.vscode')
elseif vim.g.neovide then
  require('apps.neovide')
  require('apps.default')
else
  require('apps.default')
end

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
