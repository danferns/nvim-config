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

