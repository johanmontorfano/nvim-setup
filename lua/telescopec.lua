local telescope = require("telescope")
telescope.setup {
	defaults = {
		file_ignore_patterns = {
			".git/",
			"node_modules/",
			".npm/",
			"*.py[co]",
			"*.jpg",
			"*.png",
			"*.jpeg",
			"*.dll",
			"*.exe",
            "target/",
            "*/target/",
            "*/.git/",
            "*/node_modules/"
		},
		mappings = {
			i = {
				["<C-h>"] = "which_key"
			}
		}
	}
}
telescope.load_extension("fzf")
