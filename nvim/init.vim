set nocompatible

call plug#begin()
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf'
call plug#end()

set autoread
set noswapfile
set nobackup
set autowrite
set clipboard=unnamed 
set shiftwidth=4 
set tabstop=4 
set softtabstop=4
set smartindent 
set autoindent 
set expandtab 
set smarttab 
set shiftround
set scrolloff=3
set incsearch
set noshowmatch
set hlsearch
set mouse=a
set lazyredraw
set encoding=utf-8
set textwidth=72
set spelllang+=fr
set magic
set formatoptions+=jcroqn
set backspace=indent,eol,start
set hidden
set laststatus=2
set statusline=\ %f\ %m%=%l,%c%V\ 

filetype plugin indent on

" Remove ESC key delay
set ttimeout
set ttimeoutlen=0

syntax enable
set background=dark
highlight String ctermfg=blue
highlight Comment ctermfg=yellow 
highlight Search ctermbg=darkyellow 
highlight Statement ctermfg=magenta
highlight Function cterm=none
highlight Type ctermfg=none
highlight Identifier cterm=none
highlight Special ctermfg=magenta
highlight Include ctermfg=5
highlight Error cterm=underline ctermfg=red ctermbg=none
highlight SpellBad cterm=underline ctermfg=red ctermbg=none
highlight ErrorMsg ctermfg=red ctermbg=none
highlight NonText ctermfg=8
highlight Identifier ctermfg=none
highlight Constant ctermfg=none
highlight PreProc ctermfg=none
highlight MatchParen ctermbg=none cterm=underline
highlight htmlItalic cterm=none
highlight StatusLine cterm=none ctermbg=8 ctermfg=none
highlight StatusLineNC cterm=none ctermbg=8 ctermfg=none
highlight CursorColumn cterm=none ctermbg=none ctermfg=none
highlight CursorLine cterm=none ctermbg=black ctermfg=none
highlight gitCommitSummary cterm=bold

let mapleader = "\<Space>"

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

nnoremap <leader>f :FZF<CR>
nnoremap <leader><cr> :noh<cr>

let g:fzf_colors =
\ { 'fg':         ['fg', 'Default'],
  \ 'bg':         ['bg', 'Normal'],
  \ 'preview-bg': ['bg', 'NormalFloat'],
  \ 'hl':         ['fg', 'Comment'],
  \ 'fg+':        ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':        ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':        ['fg', 'Statement'],
  \ 'info':       ['fg', 'PreProc'],
  \ 'border':     ['fg', 'Normal'],
  \ 'prompt':     ['fg', 'Conditional'],
  \ 'pointer':    ['fg', 'Exception'],
  \ 'marker':     ['fg', 'Keyword'],
  \ 'spinner':    ['fg', 'Label'],
  \ 'header':     ['fg', 'Comment'] }
