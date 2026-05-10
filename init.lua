-- The dependencies are not in a separate file because some plugins needs to 
-- be at the root of the configuration to work properly.

require('config.core')		-- Required configuration for modules/vim !
require('setup.lazy')		-- lazy.nvim setup
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
    { "nvim-mini/mini.nvim", version = "*" },
    { "mason-org/mason.nvim", opts = {} },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
    {
        "dgox16/oldworld.nvim",
        lazy = false,
        priority = 1000
    },
    "sphamba/smear-cursor.nvim",
    {
        'akinsho/flutter-tools.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim',
        },
        config = true,
    },                                                      -- Flutter tools
    {
        "razak17/tailwind-fold.nvim",
        opts = {},
        dependencies = { "nvim-treesitter/nvim-treesitter" }
    },
    {
        "wojciech-kulik/xcodebuild.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-tree.lua", -- (optional) to manage project files
            "nvim-treesitter/nvim-treesitter", -- (optional) for Quick tests support (required Swift parser)
        },
        config = function()
            require("xcodebuild").setup({})
        end,
    }
})

require('config.treesitter')
require('config.telescope')
require('config.lsp')
require('config.nvimtree')
require('config.lualine')
require('keymap')		    -- Key mapping for plugins

require('mason').setup()
require('mason-lspconfig').setup()
require('todo-comments').setup()
require('trouble').setup()
require('smear_cursor').toggle()

vim.cmd [[colorscheme gruvbox]]
