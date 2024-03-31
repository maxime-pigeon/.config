set nocompatible

call plug#begin()
" Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
" Plug 'tpope/vim-sleuth'
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf'
call plug#end()

set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

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
set showmatch
set hlsearch
set mouse=a
set lazyredraw
set encoding=utf-8
set textwidth=72
set spelllang+=fr
set magic
set formatoptions+=jcroqn
set backspace=indent,eol,start

filetype plugin indent on

" Remove ESC key delay
set ttimeout
set ttimeoutlen=0

syntax enable
set background=dark
highlight String ctermfg=4
highlight Comment ctermfg=15
highlight Statement ctermfg=5
highlight Special ctermfg=5
highlight Include ctermfg=5
highlight Error ctermfg=7
highlight ErrorMsg ctermfg=7
highlight StatusLine ctermfg=8 ctermbg=7
highlight NonText ctermfg=8
highlight Identifier ctermfg=none
highlight Constant ctermfg=none
highlight PreProc ctermfg=none
highlight MatchParen ctermbg=none cterm=underline
highlight htmlItalic term=none cterm=none gui=none
highlight markdownItalic term=none cterm=none gui=none

let mapleader = "\<Space>"

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

nnoremap <leader>f :FZF<CR>
