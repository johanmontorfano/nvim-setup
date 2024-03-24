local lsp = require("lsp-zero")
local cmp = require("cmp")

lsp.preset("recommended")

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({select = true})
    }),
    preselect = "item",
    completion = {
        completeopt = "menu,menuone,noinsert"
    }
})

lsp.setup()
