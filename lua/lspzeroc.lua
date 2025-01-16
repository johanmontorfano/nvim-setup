local lsp = require("lsp-zero")
local cmp = require("cmp")

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({select = true})
    }),
    preselect = "item",
    completion = {
        completeopt = "menu,menuone,noinsert"
    }
})
lsp.setup_servers({ "dartls", force = true })
lsp.setup()
