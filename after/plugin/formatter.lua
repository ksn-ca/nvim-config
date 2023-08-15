local util = require("formatter.util")

require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},

		python = {
			require("formatter.filetypes.python").black,
		},

		javascript = {
			require("formatter.filetypes.javascript").prettierd,
			function()
				return {
					exe = "prettierd",
					args = {
						"--write",
						"--no-semi",
						"-use-tabs=false",
						"--single-quote",
						"--jsx-single-quote",
						util.escape_path(util.get_current_buffer_file_path()),
					},
					stdin = true,
				}
			end,
		},

		javascriptreact = {
			require("formatter.filetypes.javascriptreact").prettierd,
			function()
				return {
					exe = "prettierd",
					args = {
						"--write",
						"--no-semi",
						"-use-tabs=false",
						"--single-quote",
						"--jsx-single-quote",
						util.escape_path(util.get_current_buffer_file_path()),
					},
					stdin = true,
				}
			end,
		},

		typescript = {
			require("formatter.filetypes.typescript").prettierd,
			function()
				return {
					exe = "prettierd",
					args = {
						"--write",
						"--no-semi",
						"-use-tabs=false",
						"--single-quote",
						"--jsx-single-quote",
						util.escape_path(util.get_current_buffer_file_path()),
					},
					stdin = true,
				}
			end,
		},

		typescriptreact = {
			require("formatter.filetypes.typescriptreact").prettierd,
			function()
				return {
					exe = "prettierd",
					args = {
						"--write",
						"--no-semi",
						"-use-tabs=false",
						"--single-quote",
						"--jsx-single-quote",
						util.escape_path(util.get_current_buffer_file_path()),
					},
					stdin = true,
				}
			end,
		},

		css = {
			require("formatter.filetypes.css").prettierd,
			function()
				return {
					exe = "prettierd",
					args = {
						"--write",
						"--no-semi",
						"-use-tabs=false",
						"--single-quote",
						"--jsx-single-quote",
						util.escape_path(util.get_current_buffer_file_path()),
					},
					stdin = true,
				}
			end,
		},
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
