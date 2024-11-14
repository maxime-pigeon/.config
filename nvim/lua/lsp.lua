-- Helper

local lsp = require('lspconfig')

-- Servers

lsp.gopls.setup {}
lsp.intelephense.setup {}
lsp.ts_ls.setup {}
lsp.jsonls.setup {}
lsp.pyright.setup {}
lsp.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = {
                    'vim' -- ignore `vim` global
                }
            }
        }
    }
}

vim.diagnostic.config {
    signs = false, -- disable gutter signs
    virtual_text = false,
    float = {
        border = 'rounded',
        scope = 'cursor',
        source = 'if_many'
    },
}

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
    vim.lsp.handlers.hover, {
        border = 'rounded'
    }
)

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
    vim.lsp.handlers.signature_help, {
        border = 'rounded'
    }
)

-- For :LSPInfo window
require('lspconfig.ui.windows').default_options = {
    border = 'rounded'
}
