require('nvim-treesitter.configs').setup {
    -- one of "all", "maintained" (parsers with maintainers),
    -- or a list of languages
    ensure_installed = { "go", "rust", "nix", "python", "lua", "toml", "css" },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
