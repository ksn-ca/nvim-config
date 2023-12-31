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

	-- use("nvim-treesitter/playground")

	-- see undo history
	use("mbbill/undotree")

	-- git stuff
	use("tpope/vim-fugitive")

	-- git signs
	use("lewis6991/gitsigns.nvim")

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

	-- diagnostics
	use({
		"folke/trouble.nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
	})

	-- Surround stuff with brackets and ticks
	-- use("tpope/vim-surround")

	-- Autocompletes HTML tags
	use("windwp/nvim-ts-autotag")

	-- smart comments (mostly for react)
	use("JoosepAlviste/nvim-ts-context-commentstring")

	-- color matching brackets
	use("hiphish/rainbow-delimiters.nvim")

	-- LSP hover hints
	use("ray-x/lsp_signature.nvim")

	-- highlights colours (mostly for css)
	use("norcalli/nvim-colorizer.lua")

	-- forces good nvim habits (temp plugin)
	use({
		"m4xshen/hardtime.nvim",
		requires = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
	})

	-- Surround stuff with brackets and ticks in LUA
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
	})

	-- better search
	use("folke/flash.nvim")

	-- use({ "scheisa/relpointers.nvim" })
	-- highlights words that are the same
	use("RRethy/vim-illuminate")

	-- delete does not override the yank. adds a separate cut function
	use("gbprod/cutlass.nvim")

	-- yank history
	use("gbprod/yanky.nvim")
	-- use('sindrets/diffview.nvim')
    use('simrat39/symbols-outline.nvim')
end)
