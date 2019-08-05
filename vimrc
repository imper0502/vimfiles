"$Home/.vim/vimrc"
set nocompatible
"===========================================================================
" ==== Vim Plug Setting ====
" - Plug.vim 應該放在.vim/autoload/
" - Plugins  應該放在.vim/plugged/
call plug#begin('$HOME/.vim/plugged')
" ==== Plugin lists ====
" ==== Chinese Vim Documents V2.1 for Vim 8.0  ====
" - zh_CN v2.1: '/yianwillis/vimcdoc'
" - zh_TW v1.9: 'chusiang/vimcdoc-tw'
Plug 'imper0502/vimcdoc-tw'
set helplang=tw                 " 設定幫助手冊語言為中文

" ==== vim-airline ====
" - 這是一個漂亮的主題 Plugin
" - 記得要安裝powerline-fonts
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
set laststatus=2                                            " set status line
let g:airline_powerline_fonts = 1                           " enable powerline-fonts
let g:airline#extensions#tabline#enabled = 1                " enable tabline
let g:airline#extensions#tabline#left_sep = ' '             " set left separator
let g:airline#extensions#tabline#left_alt_sep = '|'         " set left separator which are not editting
let g:airline#extensions#tabline#buffer_nr_show = 1         " show buffer number
" ==== vim-airline END====

" ==== NERDs Tree ====
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" - Functional mapping
nmap <F2> :NERDTreeToggle<CR>

" ==== ====
Plug 'mbbill/fencview'
Plug 'Yggdroot/indentLine'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
Plug 'Chiel92/vim-autoformat'
Plug 'luochen1990/rainbow'
let g:rainbow_active=1  "0 if you want to enable if later via :RainbowToggle"

" ==== A Vim alignment plugin ====
Plug 'junegunn/vim-easy-align'

" ==== emmet for vim ====
Plug 'mattn/emmet-vim', { 'for': 'HTML' }

" ==== 符號自動補齊 ====
Plug 'jiangmiao/auto-pairs'

" ==== 補齊套件 ====
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'maralla/completor.vim'
" 使用 tab 切换下一个触发点，shit+tab 上一个触发点
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
" 使用 UltiSnipsEdit 命令时垂直分割屏幕
let g:UltiSnipsEditSplit="vertical"

Plug 'ervandew/supertab'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'



" ==== 補齊神器YCM ====
" - 可能需要手動編譯安裝(ubuntu)

" make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Plug 'Valloric/YouCompleteMe', { 'do': 'sudo ./install.py --clang-completer --gocode-completer'}"
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
" ==== Initialize plugin system ====
call plug#end()
"===========================================================================
" ==== YCM Setting ====
" 寻找全局配置文件
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
" 禁用syntastic来对python检查
" let g:syntastic_ignore_files=[".*\.py$"] 
" 使用ctags生成的tags文件
" let g:ycm_collect_identifiers_from_tag_files = 1
" 开启语义补全
" 修改对C语言的补全快捷键，默认是CTRL+space，修改为ALT+;未测出效果
" let g:ycm_key_invoke_completion = '<M-;>'
" 设置转到定义处的快捷键为ALT+G，未测出效果
" nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR> 
" 关键字补全
" let g:ycm_seed_identifiers_with_syntax = 1
" 在接受补全后不分裂出一个窗口显示接受的项
" set completeopt-=preview
" 让补全行为与一般的IDE一致
" set completeopt=longest,menu
" 不显示开启vim时检查ycm_extra_conf文件的信息
" let g:ycm_confirm_extra_conf=0
" 每次重新生成匹配项，禁止缓存匹配项
" let g:ycm_cache_omnifunc=0
" 在注释中也可以补全
" let g:ycm_complete_in_comments=1
" 输入第一个字符就开始补全
" let g:ycm_min_num_of_chars_for_completion=1
" 错误标识符
" let g:ycm_error_symbol='>>'
" 警告标识符
" let g:ycm_warning_symbol='>*'
" 不查询ultisnips提供的代码模板补全，如果需要，设置成1即可
" let g:ycm_use_ultisnips_completer=0
" --------------------- 
" 版权声明：本文为CSDN博主「lwoyvye」的原创文章，遵循CC 4.0 by-sa版权协议，转载请附上原文出处链接及本声明。
" 原文链接：https://blog.csdn.net/lyh__521/article/details/4629575

"===========================================================================
" ==== 中文環境設定 ====
set encoding=utf-8              " 設定UTF-8 格式
set fileencoding=utf8           " 設定自動轉碼
set fileencodings=ucs-bom,utf-8,big5,cp936,gb18030,euc-jp,euc-kr,latin1,default

" ==== 設定縮排 ====
set ai                          " 開啟自動縮排
set shiftwidth=4                " 設定縮排寬度
set tabstop=4 softtabstop=4     " 設定縮排(按下tab時)格數
set expandtab                   " 將tab展開成為空白
retab

" ==== 游標設定" ====
set guicursor+=a:blinkon0       " 游標不閃爍
set cursorcolumn                " 開啟垂直對正游標
set cursorline                  " 開啟水平游標強調

" ==== 其他設定 ====
filetype indent on              " 以包含在Plug.vim內，可取消
syntax on                       " 開啟程式碼上色
set scrolloff=2
set formatoptions+=r 
set smartcase
set hlsearch
set showcmd
set incsearch                   " 設定搜尋不分大小寫(預設會區分大小寫)
set is                          " 搜尋自動匹配
set nobackup                    " 關閉自動備份
set mouse=a                     " 可以用滑鼠
set t_Co=256                    " 顯示256 色
" ==== ====
set number                      " 顯示行號
set relativenumber              " 顯示相對行號。
" gvim获取焦点时用相对行号，失去焦点时用绝对行号
au FocusLost * :set norelativenumber
au FocusGained * :set relativenumber
" 插入模式下用绝对行号，普通模式下用相对行号
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber
" 普通模式下绝对、相对行号切换映射
nnoremap <C-N> :call NumberToggle()<CR>
fun! NumberToggle()
    if (&relativenumber == 1)
        set norelativenumber number
    else
        set relativenumber
    endif
endfunc
" ==== ====
set nowrap                      " 不換行。
set autochdir                   " 自動切換當前目錄。
" set ruler                       " 顯示檔案捲軸目前指到百分之幾
" set wrap                        " 字數過長時換行。
" colorscheme torte               " or slate fu torte

" <F4> 换行切换
nnoremap <F4> :set wrap! wrap?<CR>

" <F6> 行号开关
nnoremap <F6> :call HideNumber()<CR>
fun! HideNumber()
  if(&relativenumber == &number)
    set relativenumber! number!
  elseif(&number)
    set number!
  else
    set relativenumber!
  endif
  set number?
endfunc

" ==== move one line down and up. ====
map <C-k> <C-a>
map <C-j> <C-x>

nmap <A-up> :.m.-2 <CR>
nmap <A-down> :.m.+1 <CR>
" nmap <A-k> :.m.-2 <CR>
" nmap <A-j> :.m.+1 <CR>
" ==== 符號自動補齊 ====
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap ' ''<left>
" inoremap " ""<left>

