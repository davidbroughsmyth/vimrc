" Misc
set nocompatible
filetype on
set number
syntax on

set autoindent
set backspace=indent,eol,start
set smarttab

set rnu

set guifont=FiraCode-Retina:h12
" set macligatures
set cursorline
set mouse=nicr
set tw=80

" Tab things
set tabstop=2 " How many columns one tab represents
set softtabstop=2 " How many columns a tab press creates
set shiftwidth=2 " Reindent operation shift amount
set expandtab
set ruler

" Load plugins
call plug#begin('~/vimrc/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'rhysd/vim-clang-format'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'ntpeters/vim-better-whitespace'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'godlygeek/tabular'
Plug 'pangloss/vim-javascript'

call plug#end()

" Plugin Configuration
" -- vim-better-whitespace: Auto strip when saving
autocmd BufWritePre * StripWhitespace

" -- vim-indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1


" -- vim-clang-format
let g:clang_format#code_style = 'google'
autocmd BufWritePre *.{c,cc,cpp,h,hh,hpp} ClangFormat

" -- vim-commentary
setlocal commentstring=//\ %s"

" -- youcompleteme
let g:ycm_semantic_triggers = {'haskell' : ['.']}
let g:ycm_python_binary_path = 'python3'

" -- vim-javascript
let g:javascript_plugin_flow = 1

colorscheme delek
