-- local nnoremap = require("sienna.keymap").nnoremap
-- local vnoremap = require("sienna.keymap").vnoremap
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>go", vim.cmd.Ex)

-- FORMATTER
-- vim.keymap.set("n", "<leader>F", "<cmd>Format<cr>")
vim.keymap.set("n", "<C-f>", "<cmd>FormatWrite<cr>")

-- NVIM TREE
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

-- BUFFER LINE
vim.keymap.set("n", "H", "<cmd>BufferLineCyclePrev<cr>")
vim.keymap.set("n", "L", "<cmd>BufferLineCycleNext<cr>")
vim.keymap.set("n", "<leader>cb", "<cmd>BufferLineCloseOthers<cr>")
vim.keymap.set("n", "<C-b>", "<cmd>BufferLinePick<CR>")

-- TELESCOPE
vim.keymap.set("n", "<C-i>", builtin.find_files, {})
vim.keymap.set("n", "<C-g>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<C-t>", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<C-o>", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<C-y>", "<cmd>Telescope yank_history<cr>")

-- TOGGLE TERM
vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>")
-- additional toggle term remaps are in after/plugin/toggleterm.lua

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
	vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

-- TROUBLE (diagnostic)
vim.keymap.set("n", "<leader>td", "<cmd>TroubleToggle workspace_diagnostics<cr>")
vim.keymap.set("n", "<leader>tq", "<cmd>TroubleToggle quickfix<cr>")
vim.keymap.set("n", "<leader>tl", "<cmd>TroubleToggle loclist<cr>")
-- nnoremap ('<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<cr>')
-- nnoremap ('<leader>xd', '<cmd>TroubleToggle document_diagnostics<cr>')

-- FUGITIVE GIT
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- UNDOO TREE
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- YANKY
vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")
vim.keymap.set("n", "<C-n>", "<Plug>(YankyCycleForward)")
vim.keymap.set("n", "<C-p>", "<Plug>(YankyCycleBackward)")

-- SYMBOLS OUTLINE
vim.keymap.set("n", "<C-s>", "<cmd>SymbolsOutline<cr>")


vim.keymap.set('i', 'C-e', '<Esc>$a', {noremap=true, silent=true})
