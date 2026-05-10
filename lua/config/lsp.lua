vim.lsp.enable({
    "lua_ls",
    "sourcekit",
    "pyright",
    "ts_ls",
    "rust_analyzer",
    "somesass_ls",
    "gopls",
    "clangd",
    "html",
    "cssls",
    "bashls",
    "jdtls",
    "dartls"
})

require("mini.snippets").setup({})
require("mini.completion").setup({
  lsp_item_kind = {
    -- This defines how the "Kind" (Function, Variable, etc.) looks
    symbols = {
      Function = '󰊕',
      Variable = '󰀫',
      Keyword  = '󰌋',
      Snippet  = '',
      -- Add more as needed
    },
  },
})
