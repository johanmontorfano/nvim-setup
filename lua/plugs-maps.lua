local wk = require("which-key")

wk.add({
    { "pcq", "<cmd>:TodoQuickFix<CR>", desc = "Todo QuickFix" },
    { "pf", group = "Telescope" },
    { "pfb", "<cmd>:Telescope buffers<CR>", desc = "Find buffers" },
    { "pff", "<cmd>:Telescope find_files<CR>", desc = "Find files" },
    { "pfg", "<cmd>:Telescope live_grep<CR>", desc = "Live grep" },
    { "pfh", "<cmd>:Telescope help_tags<CR>", desc = "Help tags" },
    { "pl", group = "LSP" },
    { "plS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace Symbols" },
    { "pla", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
    { "pli", "<cmd>LspInfo<cr>", desc = "Info" },
    { "pll", "<cmd>lua vim.lsp.codelens.run()<cr>", desc = "CodeLens Action" },
    { "plr", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
    { "pls", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document Symbols" },
    { "pm", group = "Mason" },
    { "pmo", "<cmd>:Mason<CR>", desc = "Mason" },
    { "pmu", "<cmd>:MasonUpdate<CR>", desc = "Update Mason packages" },
    { "pn", group = "nvim-tree" },
    { "pnc", "<cmd>:NvimTreeClose<CR>", desc = "Close Nvim Tree" },
    { "pnf", "<cmd>:NvimTreeFocus<CR>", desc = "Focus Nvim Tree" },
    { "pno", "<cmd>:NvimTreeOpen<CR>", desc = "Open Nvim Tree" },
    { "pnt", "<cmd>:NvimTreeToggle<CR>", desc = "Toggle Nvim Tree" },
    { "ps", group = "Session" },
    { "psc", "<cmd>:SClose<CR>", desc = "Close session" },
    { "pss", "<cmd>:SSave<CR>", desc = "Save session" },
    { "pt", group = "Trouble" },
    { "ptq", "<cmd>:TroubleToggle quickfix<CR>", desc = "Quickfix" },
    { "ptt", "<cmd>:TroubleToggle<CR>", desc = "Toggle" },
    { "pwk", "<cmd>:WhichKey<CR>", desc = "Which Key" },
  })

