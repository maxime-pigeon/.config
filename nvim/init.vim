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
Plug 'junegunn/fzf.vim'
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
colorscheme vim
set notermguicolors

highlight String ctermfg=blue
highlight def link Quote String
highlight Comment ctermfg=yellow 
highlight Search ctermbg=darkyellow 
highlight Statement ctermfg=magenta
highlight Function cterm=none
highlight javaScriptFunction ctermfg=magenta
highlight Type ctermfg=magenta
highlight Identifier cterm=none ctermfg=magenta
highlight Special ctermfg=magenta
highlight Include ctermfg=magenta
highlight Error cterm=underline ctermfg=none ctermbg=none guisp=Red
highlight SpellBad cterm=underline ctermfg=none ctermbg=none guisp=Red
highlight ErrorMsg ctermfg=red ctermbg=none
highlight NonText ctermfg=8
highlight Constant ctermfg=none
highlight PreProc ctermfg=none
highlight MatchParen ctermbg=none cterm=underline
highlight StatusLine cterm=none ctermbg=8 ctermfg=none
highlight StatusLineNC cterm=none ctermbg=8 ctermfg=none
highlight CursorColumn cterm=none ctermbg=none ctermfg=none
highlight CursorLine cterm=none ctermbg=black ctermfg=none
highlight markdownBlockquote ctermfg=cyan
highlight markdownCode ctermfg=cyan
highlight markdownCodeDelimiter ctermfg=cyan
highlight markdownItalicDelimiter cterm=italic ctermfg=gray
highlight markdownBoldDelimiter cterm=bold ctermfg=gray
highlight markdownBoldItalicDelimiter cterm=italic,bold ctermfg=gray
highlight markdownH1 cterm=bold ctermfg=magenta
highlight def link markdownH2 markdownH1
highlight def link markdownH3 markdownH1
highlight def link markdownH4 markdownH1
highlight def link markdownH1Delimiter markdownH1
highlight def link markdownH2Delimiter markdownH1
highlight def link markdownH3Delimiter markdownH1
highlight def link markdownH4Delimiter markdownH1
highlight diffAdded ctermfg=green
highlight diffChanged ctermfg=darkyellow
highlight diffRemoved ctermfg=red
highlight gitcommitDiff ctermfg=gray
highlight gitcommitHeader cterm=bold ctermfg=yellow
highlight gitcommitSummary cterm=bold
highlight def link gitcommitSelected gitcommitComment
highlight def link gitcommitSelectedFile gitcommitComment
highlight def link gitcommitSelectedType gitcommitComment
highlight def link gitcommitDiscarded gitcommitComment
highlight def link gitcommitDiscardedFile gitcommitComment
highlight def link gitcommitDiscardedType gitcommitComment
highlight def link gitcommitUntracked gitcommitComment
highlight def link gitcommitUntrackedFile gitcommitComment
highlight def link htmlEndTag htmlTag
highlight def link htmlH1 None
highlight def link typescriptAliasDeclaration None
highlight def link typescriptTypeReference None
highlight def link typescriptEndColons None
highlight def link typescriptUnion None
highlight def link typescriptFuncComma None
highlight def link phpIdentifier None
highlight def link phpParent None
highlight def link phpDefine Statement
highlight def link phpMemberSelector Special
highlight def link phpStructure Special

let mapleader = "\<Space>"

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

nnoremap <leader>f :Files<CR>
nnoremap <leader><cr> :noh<cr>

" Disable preview window
let g:fzf_vim = {}
let g:fzf_vim.preview_window = []

inoremap <A-H> ·
inoremap <A-z> «
inoremap <A-x> »
