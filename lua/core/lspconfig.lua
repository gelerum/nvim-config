local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

lspconfig.rust_analyzer.setup {
    capabilities = capabilities,
    filetypes = { "rust" },
}

lspconfig.pylsp.setup {
    capabilities = capabilities,
    filetypes = { "python" },
    settings = {
        pylsp = {
            plugins = {
                pylsp_mypy = { enabled = true },
                pylsp_black = { enabled = true },
                pylsp_ruff = {
                    enabled = true,
                },
                pyls_isort = { enabled = true },
            }
        }
    }
}

lspconfig.rnix.setup {
    capabilities = capabilities,
    filetypes = { "nix" },
}
lspconfig.gopls.setup {
    capabilities = capabilities,
}

lspconfig.lua_ls.setup {
    capabilities = capabilities,
    filetypes = { "lua" },
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file('', true),
                checkThirdParty = false,
            },
            telemetry = {
                enable = false,
            },
            format = {
                defaultConfig = {
                    indent_style = "space",
                    indent_size = "4",
                },
            }
        },
    },
}
