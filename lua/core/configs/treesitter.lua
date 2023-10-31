require('nvim-treesitter.configs').setup {
    ensure_installed = { "go", "cpp", "nix", "python", "lua", "toml", "css" },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
