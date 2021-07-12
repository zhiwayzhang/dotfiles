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
Plug 'Yggdroot/indentLine'
Plug 'iamcco/markdown-preview.vim', {'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'dart-lang/dart-vim-plugin'

call plug#end()
