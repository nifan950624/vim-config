call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'scrooloose/nerdtree'


"快速跳转到字符
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
call plug#end()
let mapleader=" "

colorscheme  molokai  
set t_Co=256
set background=dark
set wildignore=vendor/**
set relativenumber

"设置NERDTreetagbar的宽度
let g:NERDTreeWinSize = 20
let g:tagbar_width=20

"颜色主题设置
let g:solarized_termcolors=16
"两种流行风格的主题
let g:molokai_original = 1
let g:rehash256 = 1

vnoremap ,j ^
vnoremap ,k $ 
nnoremap ,j ^ 
nnoremap ,k $ 

"快捷键设置
map <F12> :TagbarToggle<CR>
map! <F12> <Esc>:TagbarToggle<CR>

map <C-P> :tabnew<CR>:FZF<CR>
map!<C-P> <ESc>:w<CR> :tabnew<CR>:FZF<CR>

"快速对齐
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

noremap <c-l> <c-w>l
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k

nmap nh :nohl<cr>

map <c-f> :NERDTreeToggle<CR>
map! <c-f> <esc>:NERDTreeToggle<CR>

"空格选中单词
:nnoremap <space> viw

nmap <leader>o o<esc>
nmap <leader>O O<esc>

"用数字切换tab页面
noremap  R gt
noremap  E gT

"markdown预览
map <silent> <F8> <Plug>MarkdownPreview
map! <silent> <F8> <Plug>MarkdownPreview
map <silent> <F9> <Plug>StopMarkdownPreview
map! <silent> <F9> <Plug>StopMarkdownPreview

"语法高亮
syntax enable
syntax on
set autoindent
set number
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

"支持鼠标
set mouse=a
set t_Co=256
set ignorecase

"加快速度
"set synmaxcol=200
set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems

"删除键
set backspace=eol,start,indent

"基本设置
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese
set ambiwidth=double
set wrap "自动换行

"搜索高亮
set hlsearch

"设置无备份
set nobackup
set nowritebackup
