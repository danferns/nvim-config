-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Use system clipboard with leader
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>p", "\"+p")

-- Format Selected Lines
vim.keymap.set('v', '<Leader>f', vim.lsp.buf.format, {})

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Center on scroll
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Escape key exits terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-N>", { desc = "Exit Terminal Mode" })

-- Window Switching
vim.keymap.set("n", "<C-H>", "<C-w>h")
vim.keymap.set("n", "<C-J>", "<C-w>j")
vim.keymap.set("n", "<C-K>", "<C-w>k")
vim.keymap.set("n", "<C-L>", "<C-w>l")

-- Shortcut for Window Commands
vim.keymap.set("n", "<Leader>v", "<C-w>")

-- CD to Current file's directory
vim.keymap.set('n', '<Leader>cc', ':cd %:h<CR>')

-- Git operations
vim.keymap.set('n', '<Leader>gl', ':G log --oneline --graph<CR>')
vim.keymap.set('n', '<Leader>gc', ':G commit<CR>')
vim.keymap.set('n', '<Leader>gC', ':G commit -a<CR>')
vim.keymap.set('n', '<Leader>gd', ':Gvdiffsplit<CR>')
vim.keymap.set('n', '<Leader>gs', ':Git<CR>')
vim.keymap.set('n', '<Leader>gp', ':Git push<CR>')

