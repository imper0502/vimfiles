set nocompatible
filetype plugin on
syntax on
" ==== 載入套件 Loading Plugins ====
call plug#begin('~/.vim/plugged')
" ---- Theme ----
Plug 'vim-airline/vim-airline'
" ---- Org file ----
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
" ---- Edit ----
Plug 'jiangmiao/auto-pairs'
Plug 'Chiel92/vim-autoformat'
Plug 'mbbill/fencview'
Plug 'luochen1990/rainbow'
" ---- Vim Chinese Document ----
" Plug 'imper0502/vimcdoc-tw'
" ---- Complete Snips ----
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" ---- Initialize Plugin Sysyem ----
call plug#end()
" ==== 設定套件 Setting Configurations of Plugins ====
" ---- Airline Setting ----
let g:airline_powerline_fonts = 1 
" ---- Rainbow ----
" 0 if you want to enable it later via :RainbowToggle"
let g:rainbow_active = 1  
" ---- Vim Chinese Document ----
" set helplang=tw
" ==== 設定Vim Setting Configurations of Vim ====
" set number
" set relativenumber
set nowrap
set nobackup
set ruler
set incsearch
set showcmd
set smartcase
set hlsearch
set background=dark
set cursorcolumn
set cursorline
set showmatch

" ==== 設定縮排 ====
set autoindent          " 開啟自動縮排
set shiftwidth=2        " 設定縮排寬度
set tabstop=2           " 設定縮排(按下tab時)格數
set softtabstop=2
set expandtab           " 將tab展開成為空白
retab

" ==== Setting Key Mapping ====
map <c-j> <c-x>   " x = x - 1
map <c-k> <c-a>   " x = x + 1
