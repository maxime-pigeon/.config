-- Plugins

require('plugins')

-- Theme

vim.cmd.colorscheme('ia')

-- Options

vim.opt.autoread      = true
vim.opt.swapfile      = false
vim.opt.backup        = false
vim.opt.autowrite     = true
vim.opt.clipboard     = 'unnamed'
vim.opt.shiftwidth    = 4
vim.opt.tabstop       = 4
vim.opt.softtabstop   = 4
vim.opt.smartindent   = true
vim.opt.wrap          = false
vim.opt.autoindent    = true
vim.opt.expandtab     = true
vim.opt.smarttab      = true
vim.opt.shiftround    = true
vim.opt.scrolloff     = 3
vim.opt.incsearch     = true
vim.opt.showmatch     = false
vim.opt.hlsearch      = true
vim.opt.mouse         = 'a'
vim.opt.encoding      = 'utf-8'
vim.opt.textwidth     = 72
vim.opt.spelllang     = 'en_ca,fr'
vim.opt.magic         = true
vim.opt.formatoptions = 'jcroqn'
vim.opt.backspace     = 'indent,eol,start'
vim.opt.hidden        = true
vim.opt.laststatus    = 2
vim.opt.statusline    = ' %f %m%=%l:%c%V '

-- Misc

vim.filetype.add({ extension = { tmpl = 'html' } })

-- Keymaps

require('keymaps')

-- Language servers

require('lsp')
