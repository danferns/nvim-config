return {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
        require("rose-pine").setup({
            dim_inactive_windows = true,
            styles = {
                italic = false,
            },
            enable = {
                terminal = false,
            },
            highlight_groups = {
                -- leafy search
                CurSearch = { fg = "base", bg = "leaf", inherit = false },
                Search = { fg = "text", bg = "leaf", blend = 20, inherit = false },
                -- transparent telescope
                TelescopeBorder = { fg = "highlight_high", bg = "none" },
                TelescopeNormal = { bg = "none" },
                TelescopePromptNormal = { bg = "base" },
                TelescopeResultsNormal = { fg = "subtle", bg = "none" },
                TelescopeSelection = { fg = "text", bg = "base" },
                TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
            },
        })
        vim.cmd.colorscheme "rose-pine-main"
    end
}
