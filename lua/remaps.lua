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
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>p", "\"+p")

-- Move selection up down
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

-- Create a new empty line
vim.keymap.set('n', '<CR>', 'o<Esc>')
vim.keymap.set('n', '<S-CR>', 'O<Esc>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Quickfix List
vim.keymap.set('n', '<leader>cn', ':cnext')
vim.keymap.set('n', '<leader>cp', ':cprev')
vim.keymap.set('n', '<leader>cf', ':colder')
vim.keymap.set('n', '<leader>cb', ':cnewer')

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

-- CD to Current file's directory
vim.keymap.set('n', '<Leader>cc', ':cd %:h<CR>')

-- Git operations
vim.keymap.set('n', '<Leader>gl', ':G log --oneline --graph<CR>')
vim.keymap.set('n', '<Leader>gc', ':G commit<CR>')
vim.keymap.set('n', '<Leader>gC', ':G commit -a<CR>')
vim.keymap.set('n', '<Leader>gd', ':Gvdiffsplit<CR>')
vim.keymap.set('n', '<Leader>gs', ':Git<CR>')
vim.keymap.set('n', '<Leader>gp', ':Git push<CR>')
vim.keymap.set('n', '<Leader>gq', function()
    -- quick commit using AI commit message, then push
    vim.cmd(":Git stage *")
    vim.cmd(":Git commit")
    local message = vim.fn.system("git diff --staged --ignore-all-space -U0 | git_commit_summary")
    vim.api.nvim_buf_set_lines(0, 0, 0, false, vim.split(message, "\n"))

    local commit_bufnr = vim.api.nvim_get_current_buf()
    vim.api.nvim_create_autocmd("BufWipeout", {
        buffer = commit_bufnr,
        once = true,
        callback = function()
            vim.cmd("silent! Git push")
        end,
    })
end)
