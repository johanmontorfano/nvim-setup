local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.code_actions.gitrebase,
        null_ls.builtins.code_actions.refactoring,
        null_ls.builtins.code_actions.ltrs,
        null_ls.builtins.completion.luasnip,
        null_ls.builtins.diagnostics.cppcheck,
        null_ls.builtins.diagnostics.gospel,
        null_ls.builtins.diagnostics.hadolint,
        null_ls.builtins.diagnostics.jsonlint,
        null_ls.builtins.diagnostics.luacheck,
        null_ls.builtins.diagnostics.mdl,
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.diagnostics.ruff,
        null_ls.builtins.diagnostics.stylelint,
        null_ls.builtins.diagnostics.tidy,
        null_ls.builtins.diagnostics.tsc
    }
})
