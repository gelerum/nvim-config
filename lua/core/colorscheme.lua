vim.o.termguicolors = true
vim.cmd([[ syntax off ]])

require("catppuccin").setup({
    integrations = {
        cmp = true,
        nvimtree = true,
        treesitter = true,
    },
})
vim.cmd.colorscheme "catppuccin-latte"
