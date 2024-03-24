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
	"BurntSushi/ripgrep",							        -- performant grep
	{
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make"
    },		                                                -- FZF impl
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
    }                                                       -- love it
})
