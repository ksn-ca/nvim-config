local actions = require("telescope.actions")

require("telescope").load_extension("yank_history")
require("telescope").setup({
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			"package.json",
			"package-lock.json",
		},
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
			},
		},
	},
})
