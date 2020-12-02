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

map <F2> <S-K><CR>
map! <F2> <C-O><S-K><CR>
map <F6> :! tab vim<CR><CR>
map! <F6> <Esc>:! tab vim<CR><CR>

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
nmap s _d

noremap <c-l> <c-w>l
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k

nmap nh :nohl<cr>
map gtf :fuftag<cr>
map! gtf <esc>:w<cr>:fuftag<cr>
nnoremap <Leader>j ^
vnoremap <Leader>j ^
nnoremap <leader>k $
vnoremap <leader>k $


"双击时高亮
map <2-leftmouse> \m
inoremap <2-leftmouse> <esc>\m
map <c-t> :tabnew<cr>
map <a-leftmouse> <c-]>
map! <a-leftmouse> <esc><c-]>
map <c-f> :NERDTreeToggle<CR>
map! <c-f> <esc>:NERDTreeToggle<CR>

"空格选中单词
:nnoremap <space> viw

nmap <leader>o o<esc>
nmap <leader>O O<esc>

"用数字切换tab页面
noremap  1 1gt
noremap  2 2gt
noremap  3 3gt
noremap  4 4gt
noremap  5 5gt
noremap  6 6gt
noremap  7 7gt
noremap  8 8gt
noremap  9 9gt
noremap  0 :tablast<cr>

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
set scrolljump=5

"删除键
set backspace=eol,start,indent
:se so=999

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
