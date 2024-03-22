require('nvim-treesitter.configs').setup {
	ensure_installed = { 
		"c", 
		"lua", 
		"vim", 
		"vimdoc", 
		"query", 
		"angular", 
		"astro", 
		"bash", 
		"cmake",
		"cpp",
		"css",
		"csv",
		"dart",
		"diff",
		"dockerfile",
		"elixir",
		"erlang",
		"fortran",
		"gitignore",
		"gitcommit",
		"git_config",
		"gitattributes",
		"go",
		"gomod",
		"gosum",
		"graphql",
		"html",
		"http",
		"java",
		"javascript",
		"json",
		"json5",
		"jsonc",
		"make",
		"markdown",
		"meson",
		"nim",
		"php",
		"proto",
		"python",
		"regex",
		"ruby",
		"rust",
		"scss",
		"sql",
		"svelte",
		"typescript",
		"vue",
		"xml",
		"yaml",
		"zig"
	},
	auto_install = true,
	highlight = {
		enable = true,
		disable = function (lang, buf)
			local max_fsize = 100 * 1024 -- 100kb
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_fsize then
				return true
			end
		end
	}
}
