local g = vim.g
local o = vim.o

-- Disable netrw
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

g.mapleader = ","
g.maplocalleader = "\\"

g.t_co = 256
g.gruvbox_italic = true

o.colorcolumn = "80"
o.background = "dark"
o.number = true
o.scrolloff = 20
o.signcolumn = "yes"

o.encoding = "utf8"
o.fileencoding = "utf8"

o.syntax = "ON"
o.termguicolors = true

o.ignorecase = true
o.smartcase = true
o.incsearch = true
o.hlsearch = true

o.expandtab = true
o.shiftwidth = 4
o.softtabstop = 4
o.tabstop = 4

o.splitright = true
o.splitbelow = true

vim.api.nvim_exec([[autocmd TermOpen * setlocal nonumber norelativenumber colorcolumn=1000]], false)
