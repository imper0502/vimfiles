"$Home/.vim/vimrc"
set nocompatible
filetype plugin indent on
"===========================================================================
"" Vim Plug
" ==========
" * Plug.vim 應該放在.vim/autoload/
" * Plugins  應該放在.vim/plugged/
"===========================================================================
let vimplug_exists=expand('$HOME/.vim/autoload/plug.vim')
if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"
  autocmd VimEnter * PlugInstall
endif
call plug#begin('$HOME/.vim/plugged')

"===========================================================================
"  Plugin lists
"===========================================================================
" Chinese Vim Documents V2.1 for Vim 8.0 
" zh_CN v2.1: '/yianwillis/vimcdoc'
" zh_TW v1.9: 'chusiang/vimcdoc-tw'
Plug 'imper0502/vimcdoc-tw'
" vim-airline
" 這是一個漂亮的主題 Plugin
" 記得要安裝powerline-fonts
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" NERDs Tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" 
Plug 'vim-scripts/grep.vim'
if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif
" 
Plug 'mbbill/fencview'
" 
Plug 'Yggdroot/indentLine'
" 
Plug 'Chiel92/vim-autoformat'
" 彩虹括號
Plug 'luochen1990/rainbow'
" Vim surround
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
" A Vim alignment plugin
Plug 'junegunn/vim-easy-align'
" emmet for vim
Plug 'mattn/emmet-vim', { 'for': 'HTML' }
" 符號自動補齊
Plug 'jiangmiao/auto-pairs'
" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
" Org FileType
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
" Plug 'vim-voom/VOoM

" SuperTab
Plug 'ervandew/supertab'
" UltiSnips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'maralla/completor.vim'
" YCM :: 需要手動編譯安裝
" Plug 'Valloric/YouCompleteMe', { 'do': 'sudo ./install.py --clang-completer', 'for': ['c', 'cpp']}"
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
"  Initialize plugin system
call plug#end()

"=================================
"=Setting for Installed Plugins ==
"=================================
" Chinese Vim Documents V2.1 for Vim 8.0
set helplang=tw      " 設定幫助手冊語言為中文
" vim-airlin
let g:airline_theme='fruit_punch'                           " 我覺得這個主題不錯
let g:airline_powerline_fonts = 1                           " enable powerline-fonts
let g:airline#extensions#tabline#enabled = 1                " enable tabline
let g:airline#extensions#tabline#left_sep = ''             " set left separator
let g:airline#extensions#tabline#left_alt_sep = ''         " set left separator which are not editting
let g:airline#extensions#tabline#buffer_nr_show = 0         " show buffer number
set laststatus=2                                            " set status line. "2" = "always"
set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
" IndentLine
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
" RainbowToggle
" 0 if you want to enable if later via :RainbowToggle
let g:rainbow_active = 1 

" YCM和Ultisnips按鍵衝突解決方案 A（)
" SuperTab
" let g:SuperTabDefaultCompletionType = '<C-n>'
" UltiSnips
" 使用 tab 切换下一个触发点，shit+tab 上一个触发点
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<S-tab>"
" 使用 UltiSnipsEdit 命令时垂直分割屏幕
" let g:UltiSnipsEditSplit = "vertical"
" YCM Setting
" let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
" make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" YCM和Ultisnips按鍵衝突解決方案 B（只使用TAB鍵，from @JazzCore)
" function! g:UltiSnips_Complete()
"   call UltiSnips#ExpandSnippet()
"   if g:ulti_expand_res == 0
"     if pumvisible()
"       return "\<C-n>"
"     else
"       call UltiSnips#JumpForwards()
"       if g:ulti_jump_forwards_res == 0
"         return "\<TAB>"
"       endif
"     endif
"   endif
"   return ""
" endfunction
" function! g:UltiSnips_Reverse()
"   call UltiSnips#JumpBackwards()
"   if g:ulti_jump_backwards_res == 0
"     return "\<C-P>"
"   endif
"   return ""
" endfunction
" if !exists("g:UltiSnipsJumpForwardTrigger")
"   let g:UltiSnipsJumpForwardTrigger = "<tab>"
" endif
" if !exists("g:UltiSnipsJumpBackwardTrigger")
"   let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" endif
  
" YCM Setting from network
" 寻找全局配置文件
" let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
" 禁用 syntastic 来对 python 检查
" let g:syntastic_ignore_files = [".*\.py$"] 
" 使用 ctags 生成的 tags 文件
" let g:ycm_collect_identifiers_from_tag_files = 1
" 开启语义补全
" 修改对C语言的补全快捷键，默认是 CTRL+space，修改为 ALT+; 未测出效果
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
" let g:ycm_confirm_extra_conf = 0
" 每次重新生成匹配项，禁止缓存匹配项
" let g:ycm_cache_omnifunc = 0
" 在注释中也可以补全
" let g:ycm_complete_in_comments = 1
" 输入第一个字符就开始补全
" let g:ycm_min_num_of_chars_for_completion = 1
" 错误标识符
" let g:ycm_error_symbol='>>'
" 警告标识符
" let g:ycm_warning_symbol='>*'
" 不查询ultisnips提供的代码模板补全，如果需要，设置成1即可
" let g:ycm_use_ultisnips_completer = 0
" --------------------- 
" 版权声明：本文为CSDN博主「lwoyvye」的原创文章，遵循CC 4.0 by-sa版权协议，转载请附上原文出处链接及本声明。
" 原文链接：https://blog.csdn.net/lyh__521/article/details/4629575

"===========================================================================
" 中文環境設定
set encoding=utf-8              " 設定UTF-8 格式
set fileencoding=utf8           " 設定自動轉碼
set fileencodings=ucs-bom,utf-8,big5,cp936,gb18030,euc-jp,euc-kr,latin1,default
set ttyfast

"" Fix backspace indent
set backspace=indent,eol,start

" 設定縮排
set tabstop=4                   " 設定tab格數
set softtabstop=0
set shiftwidth=4                " 設定縮排寬度
set expandtab                   " 將tab展開成為空白
retab

" Map leader to ,
let mapleader=','

" Enable hidden buffers
set hidden

" Searching
set is                          " 搜尋自動匹配
set incsearch                   " 設定搜尋不分大小寫(預設會區分大小寫)
set hlsearch
set ignorecase
set smartcase

set fileformats=unix,dos,mac

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

" session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

" 游標設定"
set guicursor+=a:blinkon0       " 游標不閃爍
set cursorcolumn                " 開啟垂直對正游標
set cursorline                  " 開啟水平游標強調

" 其他設定
set ai                          " 開啟自動縮排
set autochdir                   " 自動切換當前目錄。
set nobackup                    " 關閉自動備份
set mouse=a                     " 可以用滑鼠
set scrolloff=2
set showcmd
set formatoptions+=r 

"*****************************************************************************
" Visual Settings
"*****************************************************************************
" colorscheme torte               " or slate fu torte
syntax on                       " 開啟程式碼上色
set t_Co=256                    " 顯示256 色
set nowrap                      " 不換行。
set ruler                       " 顯示檔案捲軸目前指到百分之幾
set number                      " 顯示行號
set relativenumber              " 顯示相對行號。
" gvim获取焦点时用相对行号，失去焦点时用绝对行号
au FocusLost * :set norelativenumber
au FocusGained * :set relativenumber
" 插入模式下用绝对行号，普通模式下用相对行号
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber
" 普通模式下绝对、相对行号切换映射
nnoremap <F6> :call NumberToggle()<CR>
fun! NumberToggle()
    if (&relativenumber == 1)
        set norelativenumber number
    else
        set relativenumber
    endif
endfunc

"*****************************************************************************
" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"" NERDTree configuration
let g:NERDTreeChDirMode = 2
let g:NERDTreeIgnore = ['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder = ['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks = 1
let g:nerdtree_tabs_focus_on_files = 1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 35
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F3> :NERDTreeFind<CR>

"*****************************************************************************
" Mappings
"*****************************************************************************

" <F4> 换行切换
nnoremap <F4> :set wrap! wrap?<CR>

" <F5> 行号开关
nnoremap <F5> :call HideNumber()<CR>
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

" move one line down and up.
map <C-k> <C-a>
map <C-j> <C-x>

nmap <A-up> :.m.-2 <CR>
nmap <A-down> :.m.+1 <CR>
" nmap <A-k> :.m.-2 <CR>
" nmap <A-j> :.m.+1 <CR>

" 符號自動補齊
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap ' ''<left>
" inoremap " ""<left>

" fzf.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif

" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>e :FZF -m<CR>
" Recovery commands from history through FZF
nmap <leader>y :History:<CR>

" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

" Close buffer
noremap <leader>c :bd<CR>

" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"*****************************************************************************
" Commands
"*****************************************************************************
" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e

"*****************************************************************************
"" Functions
"*****************************************************************************
if !exists('*s:setupWrapping')
  function s:setupWrapping()
    set wrap
    set wm=2
    set textwidth=79
  endfunction
endif

