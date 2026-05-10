require("lualine").setup {
    options = {
        theme = "gruvbox-material",
        icons_enabled = true,
        disabled_filetypes = {
            statusline = {"NvimTree"}
        }
    },
    sections = {
        lualine_a = {"mode"},
        lualine_b = {"branch", "diff"},
        lualine_c = {"filename"},
        lualine_x = {},
        lualine_y = {"progress", "location"},
        lualine_z = {"filetype"}
    }
}
