let mapleader=" "

set number
set norelativenumber
syntax on
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
set incsearch

" 设置tab替换成4个空格
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

map s <nop>
" 设置S保存文件，并且移除行位空格
map S :%s/\s*$//g<CR>:exec "nohlsearch"<CR><C-o>:w<CR>
" 设置Q为退出
map Q :q<CR>
" 设置R更新vim配置
map R :source $MYVIMRC<CR>

map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

" 设置tn开启tabe
map tn :tabe<CR>

noremap zv :e ~/.vim/vimrc<CR>


exec "nohlsearch"

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'

call plug#end()

set tags+=~/.tags/system_tags

" 设置zd开启分屏查看定义
noremap zd b l:set splitright<CR>:vsplit<CR> <C-]> zz <C-w>h
" 设置zc关闭分屏
noremap zc <C-w>l :q<CR>


