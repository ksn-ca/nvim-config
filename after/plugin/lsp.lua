local lsp = require("lsp-zero")
local lspconfig = require('lspconfig')

lsp.preset("recommended")



lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
  ['<Enter>'] = cmp.mapping.confirm({ select = true }),
  --['<Enter>'] = cmp.mapping.complete(),
})


lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.setup()  

vim.diagnostic.config({
    virtual_text = false
})

