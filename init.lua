local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
local plugins = {
    'LnL7/vim-nix',
    'Vimjas/vim-python-pep8-indent',
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = function()
            require 'core.configs.autopairs'
        end
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = { 'hrsh7th/cmp-nvim-lsp', },
        config = function()
            require 'core.configs.lspconfig'
        end
    },
    {
        'hrsh7th/nvim-cmp',
        dependencies = { 'hrsh7th/cmp-vsnip', 'hrsh7th/cmp-nvim-lsp' },
        config = function()
            require 'core.configs.cmp'
        end,
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require "core.configs.tree"
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require "core.configs.treesitter"
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require "core.configs.lualine"
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require "core.configs.colorscheme"
        end,
    },
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require 'core.configs.telescope'
        end,
    }
}

local opts = {}

require("lazy").setup(plugins, opts)
require("core")
require("core")
