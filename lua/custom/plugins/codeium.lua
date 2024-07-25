-- https://github.com/Exafunction/codeium.vim
return {
    'Exafunction/codeium.vim',
    event = 'BufEnter',
    config = function ()
        vim.g.codeium_enabled = false
        vim.keymap.set('n', '<leader>i', ':CodeiumToggle<CR>', { silent = true })
        vim.keymap.set('i', '<M-k>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
        vim.keymap.set('i', '<M-l>', function() return vim.fn['codeium#CycleOrComplete']() end, { expr = true, silent = true })
        vim.keymap.set('i', '<M-h>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
        vim.keymap.set('i', '<M-j>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    end
}
