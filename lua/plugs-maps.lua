local wk = require("which-key")

wk.register({
    -- which key bindings
    wk = { "<cmd>:WhichKey<CR>", "Which Key" },
    -- telescope bindings
	f = {
		name = "Telescope",
		f = { "<cmd>:Telescope find_files<CR>", "Find files" },
		g = { "<cmd>:Telescope live_grep<CR>", "Live grep"},
		b = { "<cmd>:Telescope buffers<CR>", "Find buffers" },
		h = { "<cmd>:Telescope help_tags<CR>", "Help tags" }
	},
    -- session bindings
    s = {
        name = "Session",
        s = { "<cmd>:SSave<CR>", "Save session" },
        c = { "<cmd>:SClose<CR>", "Close session" }
    },
    -- mason bindings
    m = {
        name = "Mason",
        o = { "<cmd>:Mason<CR>", "Mason" },
        u = { "<cmd>:MasonUpdate<CR>", "Update Mason packages" }
    },
    -- lsp-zero bindings
    l = {
        name = "LSP",
        a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
        i = { "<cmd>LspInfo<cr>", "Info" },
        l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
        r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
        s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
        S = {
            "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
            "Workspace Symbols",
        }
    },
    -- nvim-tree bindings
    n = {
        name = "nvim-tree",
        o = { "<cmd>:NvimTreeOpen<CR>", "Open Nvim Tree" },
        t = { "<cmd>:NvimTreeToggle<CR>", "Toggle Nvim Tree" },
        c = { "<cmd>:NvimTreeClose<CR>", "Close Nvim Tree" },
        f = { "<cmd>:NvimTreeFocus<CR>", "Focus Nvim Tree" }
    },
    -- trouble bindings
    t = {
        name = "Trouble",
        t = {"<cmd>:TroubleToggle<CR>", "Toggle"},
        q = {"<cmd>:TroubleToggle quickfix<CR>", "Quickfix"}
    },
    -- todo-comments bindings
    cq = {"<cmd>:TodoQuickFix<CR>", "Todo QuickFix"},
    -- pineapple 
    p = {"<cmd>:Pineapple<CR>", "Theme manager"}
}, { prefix = "p" })
