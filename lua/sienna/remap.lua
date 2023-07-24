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

-- Telsescope
vim.keymap.set("n", "<leader>tf", builtin.find_files, {})
vim.keymap.set("n", "<leader>tg", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- ToggleTerm
nnoremap("<leader>tt", "<cmd>ToggleTerm<cr>")
