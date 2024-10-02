-- The dependencies are not in a separate file because some plugins needs to 
-- be at the root of the configuration to work properly.

require('core-config')		-- Required configuration for modules/vim !
require('lazy-setup')		-- lazy.nvim setup
require('lazy').setup({
    "nvim-lua/plenary.nvim",        						-- async lua
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 3000
		end
	},								                    	-- 💖which key
	"nvim-treesitter/nvim-treesitter",					    -- syntax highlight
	"nvim-tree/nvim-web-devicons",						    -- icons
	"nvim-telescope/telescope.nvim",					    -- 💖Telescope
	"morhetz/gruvbox",							            -- gruvbox theme
    {
        "folke/persistence.nvim",
        event = "BufReadPre",
        opts = {}
    },                                                      -- sessions
    "mhinz/vim-startify",                                   -- start screen
    {
        "VonHeikemen/lsp-zero.nvim",
        dependencies = {
            {"neovim/nvim-lspconfig"},
            {"williamboman/mason.nvim"},
            {"williamboman/mason-lspconfig.nvim"},
            {"hrsh7th/nvim-cmp"},
            {"hrsh7th/cmp-nvim-lsp"},
            {"hrsh7th/cmp-buffer"},
            {"hrsh7th/cmp-path"},
            {"hrsh7th/cmp-nvim-lua"},
            {"L3MON4D3/LuaSnip"},
            {"rafamadriz/friendly-snippets"}
        }
    },                                                      -- completion
    {
        "nvim-tree/nvim-tree.lua",
        lazy = true,
        dependencies = {
            {"nvim-tree/nvim-web-devicons"}
        }
    },                                                      -- file explorer
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            {"nvim-tree/nvim-web-devicons"}
        }
    },                                                      -- lualine
    {
        "MeanderingProgrammer/markdown.nvim",
        name = "render-markdown",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("render-markdown").setup({})
        end
    },                                                      -- markdown viewer
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" }
    },                                                      -- todo markers
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },                                                      -- love it
    {
        "dgox16/oldworld.nvim",
        lazy = false,
        priority = 1000
    },
    "HelifeWasTaken/VimTek"
})
require('treesitter')		-- nvim-treesitter setup
require('telescopec')		-- telescope.nvim setup
require('plugs-maps')		-- Key mapping for plugins
require('mason-setup')      -- kinda explicit
require('lspzeroc')         -- lsp-zero setup
require('lsp')              -- lsp setup using lspconfig
require('nvimtreec')        -- nvim tree setup
require('lualinec')         -- lualine setup
require('troublec')         -- trouble setup
require('todoc')            -- todo-comments setup
