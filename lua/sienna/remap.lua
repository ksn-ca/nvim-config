local nnoremap = require("sienna.keymap").nnoremap
local vnoremap = require("sienna.keymap").vnoremap

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>go", vim.cmd.Ex)

nnoremap("<leader>F", "<cmd>Format<cr>")
nnoremap("<leader>f", "<cmd>FormatWrite<cr>")

-- Nvimtree
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-l>", "<C-w>l")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")

-- Buffers
nnoremap("H", "<cmd>BufferLineCyclePrev<cr>")
nnoremap("L", "<cmd>BufferLineCycleNext<cr>")


-- TOGGLE DIAGNOSTICS ON AND OFF
vim.g.diagnostics_active = false
--function _G.toggle_diagnostics()
--	if vim.g.diagnostics_active then
--		vim.g.diagnostics_active = false
--		--vim.lsp.diagnostic.clear()
--		vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end
--	else
--		vim.g.diagnostics_active = true
--		vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
--			virtual_text = true,
--			signs = true,
--			underline = true,
--			update_in_insert = false,
--		})
--	end
--end

--vim.api.nvim_set_keymap("n", "<leader>tt", ":call v:lua.toggle_diagnostics()<CR>", { noremap = true, silent = true })
