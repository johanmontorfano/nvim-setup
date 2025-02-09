local lsp_conf = require("lspconfig")

lsp_conf.lua_ls.setup {}
lsp_conf.pyright.setup {}
lsp_conf.ts_ls.setup {}
lsp_conf.rust_analyzer.setup {}
lsp_conf.somesass_ls.setup {}
lsp_conf.ccls.setup {
  init_options = {
    compilationDatabaseDirectory = "build",
    cache = { directory = ".ccls-cache" },
    clang = { extraArgs = { "-I./include" } }
  }
}
lsp_conf.html.setup {}
lsp_conf.cssls.setup {}
lsp_conf.bashls.setup {}
lsp_conf.jdtls.setup {}
lsp_conf.dartls.setup {}
