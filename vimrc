"$Home/vimfiles/vimrc"
"================================================"
"               Vim Plug Setting
"================================================"
" Specify a directory for plugins
call plug#begin('$HOME/.vim/plugged')

" NERDs
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Golang
Plug 'fatih/vim-go'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

" 中文使用手冊 V1.9 for Vim7.4 Chinese Vim Documents
Plug 'imper0502/vimcdoc-tw'     "" fork from '/vimcdoc-tw'
"" 設定幫助手冊語言為中文
set helplang=tw                  " for plugin: vimcdoc-tw

" vim-airline
"" 這是一個漂亮的主題外觀
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"" setting for plugin: vim-airline
set laststatus=2                " set status line
let g:airline_powerline_fonts = 1   " enable powerline-fonts
"" 
set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
"" enable tabline
let g:airline#extensions#tabline#enabled = 1
"" set left separator
let g:airline#extensions#tabline#left_sep = ' '
"" set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'
"" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1

" for Git
Plug 'mbbill/fencview'

Plug 'tpope/vim-fugitive'

" 補齊神器YCM
"" 可能需要手動編譯安裝(ubuntu)
Plug 'Valloric/YouCompleteMe', { 'do': 'sudo ./install.py --clang-completer --gocode-completer'}"
""Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

""Plug 'SirVer/ultisnips'



" Initialize plugin system
call plug#end()

"" 全中文設定::Start  """"""""""""""""""""""""""""""""""""""
source $VIMRUNTIME/delmenu.vim	
let $LANG = 'zh-Hant-TW'
""let $LANG = 'chinese-taiwan'
""set langmenu=zh_tw.utf-8
language message zh_tw.utf-8

" 設定UTF-8 格式
set fileencodings=utf8,big5     " utf-8 和big5 的檔案互相轉碼，打開時不會變亂碼
set fileencoding=utf8           " 新檔以utf-8存檔
set encoding=utf-8

" 設定自動轉碼
set fileencodings=ucs-bom,utf-8,big5,cp936,gb18030,euc-jp,euc-kr,latin1,default

"" 中文設定::End  """"""""""""""""""""""""""""""""""""""""

" 設定主題: 黑底白字
colorscheme torte               "slate fu torte"
syntax on                       " 開啟程式碼上色
set t_Co=256                    " 顯示256 色
set bg=dark                     " 提示背景為暗色系，前景色會增亮
set nu                          " 顯示行號
set ruler                       " 顯示檔案捲軸目前指到百分之幾

" 設定縮排
set ai                          " 開啟自動縮排
set shiftwidth=4                " 設定縮排寬度
set tabstop=4 softtabstop=4     " 設定縮排(按下tab時)格數
set expandtab                   " 將tab展開成為空白
retab

" 符號自動補齊
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap " ""<left>

" 設定另一個導引鈕
inoremap '' <Esc>

" 游標設定"
set guicursor+=a:blinkon0       " 游標不閃爍
set cursorcolumn                " 開啟垂直對正游標
set cursorline                  " 開啟水平游標強調

" Functional mapping
nmap <F2> :NERDTreeToggle<CR>

" 其他設定
set ic                          " 設定搜尋不分大小寫(預設會區分大小寫)
set is                          " 搜尋自動匹配
set nobackup                    " 關閉自動備份
set mouse=a
set formatoptions+=r
filetype indent on

"nmap <C-b>n bnext<CR>
"nmap <C-b>p bprev<CR>
