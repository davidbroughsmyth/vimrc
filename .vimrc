" Misc
set nocompatible
filetype on
set number
syntax on

set autoindent
set backspace=indent,eol,start
set smarttab

" Tab things
set tabstop=4 " How many columns one tab represents
set softtabstop=4 " How many columns a tab press creates
set shiftwidth=4 " Reindent operation shift amount
set expandtab
set ruler

" Load plugins
call plug#begin('~/vimrc/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'Shougo/neocomplete.vim'
Plug 'tpope/vim-commentary'
Plug 'ntpeters/vim-better-whitespace'
Plug 'nathanaelkane/vim-indent-guides'

call plug#end()

" Plugin Configuration
" -- vim-better-whitespace: Auto strip when saving
autocmd BufWritePre * StripWhitespace

" -- vim-indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1


