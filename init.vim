syntax on
set relativenumber 
set clipboard+=unnamed,unnamedplus
set softtabstop=4
set shiftwidth=4
"set mouse=a
set tabstop=4
set shiftwidth=4
set showmatch
set ruler
set cursorline
set hlsearch
set incsearch
let g:coc_disable_startup_warning=1

" set c++ 11 support
let g:syntastic_cpp_compiler_options = ' -std=c++11'
" Markdown Preview
let g:apc_enable_ft = {'text':1, 'markdown':1, 'php':1}

set cpt=.,k,w,b

set completeopt=menu,menuone,noselect

set shortmess+=c

autocmd BufNewFile *.cpp call SetInclude()

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'iamcco/markdown-preview.vim', {'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'dart-lang/dart-vim-plugin'
Plug 'crusoexia/vim-monokai'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
call plug#end()

" snippet for oj code

colorscheme monokai
" airline config
" 设置状态栏
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = 'desertink'  " 主题
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
       \ '0': '0 ',
       \ '1': '1 ',
       \ '2': '2 ',
       \ '3': '3 ',
       \ '4': '4 ',
       \ '5': '5 ',
       \ '6': '6 ',
       \ '7': '7 ',
       \ '8': '8 ',
       \ '9': '9 '
       \}
" 设置切换tab的快捷键 <\> + <i> 切换到第i个 tab
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nnoremap <F10> :call CompileAndRun()<CR>
nnoremap <F9> :call Copy2Clipboard()<CR>

func! Copy2Clipboard()
	normal gg
	normal 0
	normal v
	normal G
	normal y
endfunc

func! CompileAndRun()
	exec "w"
	if &filetype == "c"
		exec '!g++ --std=c++17 % -o %<'
		exec '!./%< < in.txt'
	elseif &filetype == "cpp"
		exec '!g++ --std=c++17 % -o %<'
		exec '!./%< < in.txt'
	elseif &filetype == "py"
		exec '!python %<.py < in.txt'
	elseif &filetype == "sh"
		exec '!sh %<.sh'
	elseif &filetype == "go"
		exec '!go run %<.go < in.txt'
	endif
endfunc

func! SetInclude()
	r /Users/zhiwayzhang/WorkSpace_Algorithm/template/template.cpp
	normal gg
	normal "_dd
	normal 16j
endfunc

" 设置切换tab的快捷键 <\> + <-> 切换到前一个 tab
nmap <leader>- <Plug>AirlineSelectPrevTab
" 设置切换tab的快捷键 <\> + <+> 切换到后一个 tab
nmap <leader>+ <Plug>AirlineSelectNextTab
" 设置切换tab的快捷键 <\> + <q> 退出当前的 tab
nmap <leader>q :bp<cr>:bd #<cr>
" 修改了一些个人不喜欢的字符
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = "CL" " current line
let g:airline_symbols.whitespace = '|'
let g:airline_symbols.maxlinenr = 'Ml' "maxline
let g:airline_symbols.branch = 'BR'
let g:airline_symbols.readonly = "RO"
let g:airline_symbols.dirty = "DT"
let g:airline_symbols.crypt = "CR" 

" nerdtree config
" autocmd vimenter * NERDTree  "自动开启Nerdtree
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
"打开vim时如果没有文件自动打开NERDTree
" autocmd vimenter * if !argc()|NERDTree|endif
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 设置树的显示图标
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
let g:NERDTreeShowLineNumbers=0 " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
""Making it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap <F3> :NERDTreeToggle<CR> " 开启/关闭nerdtree快捷键
nnoremap dt :UndotreeToggle<CR> " enable undo tree 
" tagbar config
let g:tagbar_width=30
nnoremap <silent> <F4> :TagbarToggle<CR> " 将tagbar的开关按键设置为 F4

highlight Visual cterm=none ctermbg=darkgrey ctermfg=cyan

