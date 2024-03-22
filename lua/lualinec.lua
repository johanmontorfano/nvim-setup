local gruvbox = require("lualine.themes.gruvbox")

require("lualine").setup({
    options = {
        theme = gruvbox,
        globalstatus = true
    },
    sections = {
        lualine_a = {"mode"},
        lualine_b = {"filename"},
        lualine_c = {"filetype"},
        lualine_x = {"mode"},
        lualine_y = {"progress"},
        lualine_z = {"branch"}
    },
    extensions = {"nvim-tree", "lazy"}
})
