require("telescope").setup({
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			"package.json",
			"package-lock.json",
		},
	},
})

