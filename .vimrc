call plug#begin('~/.vim/plugged')

Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
" Plug 'vim-syntastic/syntastic'
Plug 'Chiel92/vim-autoformat'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
"快速跳转到字符
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
call plug#end()


" YouCompleteMe
if !exists("g:ycm_semantic_triggers")
 let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

" autoformat
noremap <leader>f :Autoformat<CR>

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

noremap <c-l> <c-w>l
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
nmap <leader>w :w
nmap <leader>q :q
map ,j ^
map ,k $
nmap <leader>n :nohl<cr>

map <c-e> :NERDTreeToggle<CR>
map! <c-e> <esc>:NERDTreeToggle<CR>
map <c-t> :terminal<CR>
map! <c-t> :terminal<CR>

"用数字切换tab页面
nmap R gt
nmap E gT

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
