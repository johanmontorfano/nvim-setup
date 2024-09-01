local telescope = require("telescope")
telescope.setup {
	defaults = {
		mappings = {
			i = {
				["<C-h>"] = "which_key"
			}
		}
	}
}
telescope.load_extension("pineapple")
