require('nvim-treesitter.configs').setup {
  -- one of "all", "maintained" (parsers with maintainers),
  -- or a list of languages
  ensure_installed = { "rust", "nix", "python", "lua", "toml" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
   },
}

