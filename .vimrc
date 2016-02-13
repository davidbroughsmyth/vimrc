set nocompatible
filetype off

" Set up vundle
set rtp+=~/git/vimrc/.vim/bundle/Vundle.vim
call vundle#begin()

" Load plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'lervag/vimtex'
Plugin 'tpope/vim-commentary'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Yggdroot/indentLine'
" Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'

" Tear down vundle
call vundle#end()
filetype plugin indent on

" Airline Settings
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Trailing Whitespace
autocmd BufWritePost * FixWhitespace

" Indent Line
let g:indentLine_char = "\uE0A3"

" Other crap
set number
syntax on
au BufAdd,BufNewFile * nested tab sball
colorscheme Tomorrow

" Tab stuff
set tabstop=4
set softtabstop=4
set shiftwidth=4
" set noexpandtab
set expandtab
