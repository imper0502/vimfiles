call plug#begin('$HOME\vimfiles\plugged')

Plug 'imper0502/vimcdoc-tw'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'mbbill/fencview'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'

call plug#end()

" 顯示設定
syntax on                       " 開啟程式碼上色
set bg=dark                     " 提示背景為暗色系，前景色會增亮
set t_Co=256                    " 顯示256 色
set nu                          " 顯示行號
set ruler                       " 顯示檔案捲軸目前指到百分之幾

" For Indent
set ai                          " 開啟自動縮排
set shiftwidth=4                " 設定縮排寬度
set softtabstop=4               " 設定縮排(按下tab時)格數
set tabstop=4                   " 設定縮排(按下tab時)格數
set expandtab                   " 將tab展開成為空白
set formatoptions+=r
filetype indent on
retab

" 游標設定
set mouse=a
set guicursor+=a:blinkon0       " 游標不閃爍
set cursorcolumn                " 開啟垂直對正游標
set cursorline                  " 開啟水平游標強調

" 搜尋設定
set ic                          " 設定搜尋不分大小寫(預設會區分大小寫)
set is                          " 搜尋自動匹配

" 關閉自動備份
set nobackup


"" Key Binding
" Set leader key
nnoremap <SPACE> <Nop>
let mapleader=" "

" Buffers
nmap <leader>bn bnext<CR>
nmap <leader>bp bprev<CR>

" Windows
nmap <leader>ww  <C-w><C-w>

" 符號自動補齊
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap " ""<left>


"" Plugin
" For vimcdoc-tw:
set helplang=tw

" For NERDTree
nmap <F2> :NERDTreeToggle<CR>

" For vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1

set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1


"" 中文設定置底
source $VIMRUNTIME/delmenu.vim
language message zh_tw.utf-8
let $LANG="zh_TW.UTF-8"
set encoding=utf-8
set fileencoding=utf8
set fileencodings=ucs-bom,utf-8,big5,cp936,gb18030,euc-jp,euc-kr,latin1,default
