local nnoremap = require("sienna.keymap").nnoremap
local vnoremap = require("sienna.keymap").vnoremap
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>go", vim.cmd.Ex)

-- Formatter
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
nnoremap("<leader>cb", "<cmd>BufferLineCloseOthers<cr>")
nnoremap("gb", "<cmd>BufferLinePick<CR>")

-- Telsescope
vim.keymap.set("n", "<leader>tf", builtin.find_files, {})
vim.keymap.set("n", "<leader>tg", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
nnoremap("<c-t>", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")

-- ToggleTerm
nnoremap("<leader>tt", "<cmd>ToggleTerm<cr>")
-- additional toggle term remaps are in after/plugin/toggleterm.lua

-- Trouble (diagnostic)
nnoremap("<leader>td", "<cmd>TroubleToggle workspace_diagnostics<cr>")
-- nnoremap ('<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<cr>')
-- nnoremap ('<leader>xd', '<cmd>TroubleToggle document_diagnostics<cr>')
nnoremap("<leader>tq", "<cmd>TroubleToggle quickfix<cr>")
nnoremap("<leader>tl", "<cmd>TroubleToggle loclist<cr>")

-- FUGITIVE GIT
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- UNDOO TREE
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- YANKY
vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")
vim.keymap.set("n", "<c-n>", "<Plug>(YankyCycleForward)")
vim.keymap.set("n", "<c-p>", "<Plug>(YankyCycleBackward)")

-- vim.keymap.set("n", "<c-f>", "<Plug>(YankyCycleForward)")
-- vim.keymap.set("n", "<c-z>", "<Plug>(YankyCycleBackward)")
vim.keymap.set("n", "<C-y>", "<cmd>Telescope yank_history<cr>")


