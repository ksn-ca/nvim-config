local nnoremap = require("sienna.keymap").nnoremap
local vnoremap = require("sienna.keymap").vnoremap

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>go", vim.cmd.Ex)

nnoremap("<leader>F", "<cmd>Format<cr>")
nnoremap("<leader>f", "<cmd>FormatWrite<cr>")

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
