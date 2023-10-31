require("catppuccin").setup({
    integrations = {
        cmp = true,
        nvimtree = true,
        treesitter = true,
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = { "italic" },
                hints = { "italic" },
                warnings = { "italic" },
                information = { "italic" },
            },
            underlines = {
                errors = { "underline" },
                hints = { "underline" },
                warnings = { "underline" },
                information = { "underline" },
            },
            inlay_hints = {
                background = true,
            },
        },
    },
    styles = {
        operators = { "italic" },
        loops = { "italic" },
        keywords = { "italic" },
    }
})
vim.cmd.colorscheme "catppuccin-latte"
