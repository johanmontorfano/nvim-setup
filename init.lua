require('core-config')		-- Required configuration for modules/vim !
require('lazy-setup')		-- lazy.nvim setup
require('deps')			    -- dependencies setup
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

vim.cmd[[colorscheme gruvbox]]
