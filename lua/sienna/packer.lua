-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	auto_clean = true

	-- fuzzy finder
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- cute background
	use({
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	})

	-- make code nicer
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	use("nvim-treesitter/playground")

	-- see undo history
	use("mbbill/undotree")

	-- git stuff
	use("tpope/vim-fugitive")

	-- lsp stuff
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ -- Optional
				"williamboman/mason.nvim",
				run = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	})

	-- adds pretty indentation lines to ui
	use("lukas-reineke/indent-blankline.nvim")

	-- auto closing brackets
	-- use("jiangmiao/auto-pairs")
	use("m4xshen/autoclose.nvim")

	-- line comments
	use("tpope/vim-commentary")

	-- folder/file tree
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
	})

	-- status line at the bottom
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})
	-- tabs with open files
	use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })

	-- format code with a style guide
	use({ "mhartington/formatter.nvim" })

	-- open terminal inside nvim
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
	})
end)
