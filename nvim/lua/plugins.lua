local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug('tpope/vim-unimpaired')
Plug('tpope/vim-repeat')
Plug('tpope/vim-surround')
Plug('junegunn/vim-easy-align')
Plug('nvim-lua/plenary.nvim')
Plug('neovim/nvim-lspconfig')
Plug('windwp/nvim-autopairs')
Plug('windwp/nvim-ts-autotag')
Plug('stevearc/conform.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug('nvim-telescope/telescope-fzf-native.nvim',
    { ['do'] = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' })
vim.call('plug#end')

-- Setup

require('nvim-autopairs').setup {}
require('nvim-ts-autotag').setup {}

vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*',
    callback = function(args)
        require('conform').format({ bufnr = args.buf })
    end,
})

require('conform').setup {
    formatters_by_ft = {
        go = { 'goimports', 'gofmt' },
        javascript = { 'deno_fmt' },
        typescript = { 'deno_fmt' },
        tsx = { 'prettier' },
        html = { 'prettier' },
        css = { 'prettier' },
        python = { 'ruff_format' },
    },
    default_format_opts = {
        lsp_format = 'fallback',
    }
}

require('conform').formatters.prettier = {
    prepend_args = { '--tab-width', '4' }
}

require('conform').formatters.deno_fmt = {
    inherit = false,
    command = 'deno',
    args = { 'fmt', '--indent-width', '4', '-' }
}

require('nvim-treesitter.configs').setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "php" }
    },
    auto_install = true,
}

local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        sorting_strategy = 'ascending',
        layout_strategy = 'vertical',
        layout_config = {
            mirror = true,
            prompt_position = 'top',
            preview_cutoff = 0,
            width = 0.9
        },
        mappings = {
            i = {
                ['<C-j>'] = actions.move_selection_next,
                ['<C-k>'] = actions.move_selection_previous,
                ['<esc>'] = actions.close
            }
        }
    }
}
require('telescope').load_extension('fzf')
