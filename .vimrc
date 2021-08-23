call plug#begin('~/.vim/plugged')

Plug 'plasticboy/vim-markdown'
Plug 'Raimondi/delimitMate'
Plug 'ferrine/md-img-paste.vim'
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
call plug#end()

let mapleader=" "

" md粘贴图片
autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
let g:mdip_imgdir = 'img'

inoremap <expr> <CR> Expander()

function! Expander()
  let line = getline(".")
  let col = col(".") - 1

  if line[0:2] ==# "```" && line[col : col+2] ==# "```"
    return "\<CR>\<Esc>O"
  endif

  return "\<CR>"
endfunction

au FileType python let b:delimitMate_autoclose = 0
au FileType python let b:delimitMate_nesting_quotes = ['"']

au FileType md let b:delimitMate_autoclose = 0

" YouCompleteMe
if !exists("g:ycm_semantic_triggers")
 let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

set completeopt=longest,menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
" 跳转到定义处
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
" nnoremap <leader>lo :lopen<CR>	"open locationlist
" nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>

colorscheme  molokai  
set t_Co=256
set background=dark
set wildignore=vendor/**

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

" autoformat
noremap <leader>f :Autoformat<CR>

nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>wq :wq<CR>
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

autocmd BufNewFile,BufRead *.md set nofoldenable

"语法高亮
syntax enable
syntax on
set number
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
