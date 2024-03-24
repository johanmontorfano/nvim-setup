local gruvbox = require("lualine.themes.gruvbox")

require("lualine").setup({
    options = {
        theme = gruvbox,
        globalstatus = true
    },
    sections = {
        lualine_a = {"branch"},
        lualine_b = {"diff", "filename"},
        lualine_c = {"filetype"},
        lualine_x = {"progress"},
        lualine_y = {"location"},
        lualine_z = {"mode"}
    },
    extensions = {"nvim-tree", "lazy"}
})
