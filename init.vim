set relativenumber 
set tabstop=4
set shiftwidth=2
set ruler
set cursorline

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'jiangmiao/auto-pairs'

call plug#end()
