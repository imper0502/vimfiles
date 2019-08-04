"$Home/.vim/vimrc"
"===========================================================================
" Vim Plug Setting
" - Plug.vim 應該放在.vim/autoload/
"===========================================================================
" Specify a directory for plugins
call plug#begin('$HOME/.vim/plugged')

" Plugin lists
" 中文使用手冊 V2.1 for Vim8.0 Chinese Vim Documents
" the lastest Chinese version (version8.0, 簡化字): '/yianwillis/vimcdoc'
" Plug 'imper0502/vimcdoc-tw'
" set helplang=tw                 " 設定幫助手冊語言為中文
                                    
" vim-airline
" 這是一個漂亮的主題 Plugin
" 記得要安裝powerline-fonts
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
 
set laststatus=2                                            " set status line
let g:airline_powerline_fonts = 1                           " enable powerline-fonts
let g:airline#extensions#tabline#enabled = 1                " enable tabline
let g:airline#extensions#tabline#left_sep = ' '             " set left separator
let g:airline#extensions#tabline#left_alt_sep = '|'         " set left separator which are not editting
let g:airline#extensions#tabline#buffer_nr_show = 1         " show buffer number

Plug 'mbbill/fencview'

" A Vim alignment plugin 
Plug 'junegunn/vim-easy-align'

" emmet for vim
Plug 'mattn/emmet-vim', { 'for': 'HTML' }

" 符號自動補齊
Plug 'jiangmiao/auto-pairs'

" 補齊套件
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" 補齊神器YCM
" 可能需要手動編譯安裝(ubuntu)
" Plug 'Valloric/YouCompleteMe', { 'do': 'sudo ./install.py --clang-completer --gocode-completer'}"
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

" NERDs
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Functional mapping
" nmap <F2> :NERDTreeToggle<CR>

" Initialize plugin system
call plug#end()
"===========================================================================
" 'Initialize plugin system' is done.
"===========================================================================

" 中文環境設定
set encoding=utf-8              " 設定UTF-8 格式
set fileencoding=utf8           " 設定自動轉碼
set fileencodings=ucs-bom,utf-8,big5,cp936,gb18030,euc-jp,euc-kr,latin1,default

" 設定縮排
set ai                          " 開啟自動縮排
set shiftwidth=4                " 設定縮排寬度
set tabstop=4 softtabstop=4     " 設定縮排(按下tab時)格數
set expandtab                   " 將tab展開成為空白
retab

" 符號自動補齊
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap ' ''<left>
" inoremap " ""<left>

" 游標設定"
set guicursor+=a:blinkon0       " 游標不閃爍
set cursorcolumn                " 開啟垂直對正游標
set cursorline                  " 開啟水平游標強調

" 其他設定
set ic                          " 設定搜尋不分大小寫(預設會區分大小寫)
set is                          " 搜尋自動匹配
set nobackup                    " 關閉自動備份
set mouse=a                     " 可以用滑鼠
set formatoptions+=r 
filetype indent on              " 以包含在Plug.vim內，可取消

" move one line down and up.
nmap <A-up> :.m.-2 <CR>
nmap <A-k> :.m.-2 <CR>
nmap <A-down> :.m.+1 <CR>
nmap <A-j> :.m.+1 <CR>

syntax on                       " 開啟程式碼上色
set t_Co=256                    " 顯示256 色
" colorscheme torte               " or slate fu torte

set relativenumber              " 顯示相對行號。
" set number                      " 顯示行號
" set ruler                       " 顯示檔案捲軸目前指到百分之幾

" set wrap                        " 字數過長時換行。
set nowrap                      " 不換行。
set autochdir                   " 自動切換當前目錄。

