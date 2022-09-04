-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        -- Add tab support
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        -- ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Insert,
          select = true,
        })
        },
    sources = cmp.config.sources({
      { name = 'nvim_lsp_signature_help' },
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
      { name = 'path' },
      { name = 'buffer' },

    })
})
    -- Use buffer source for `/`
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
}
})

-- Use cmdline & path source for ':'
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
})

-- LSP Formmatter
-- require("lsp-format").setup {}


-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true


-- on_attach for mapping keys only when the LSP attaches to the buffer
local on_attach = function(client, bufnr)
    -- require "lsp-format".on_attach(client)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', OPTIONS)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gv', '<cmd>vsplit<CR><cmd>lua vim.lsp.buf.definition()<CR>', OPTIONS)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', OPTIONS)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', OPTIONS)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', OPTIONS)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', OPTIONS)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k', '<cmd>lua vim.lsp.buf.signature_help()<CR>', OPTIONS)
    vim.api.nvim_buf_set_keymap(bufnr, 'i', '<C-k', '<cmd>lua vim.lsp.buf.signature_help()<CR>', OPTIONS)

end


require('lspconfig')['pylsp'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        pylsp = {
            plugins = {
                jedi_completion = {
                    include_params = true,
                }
            }
        }
    }
}
