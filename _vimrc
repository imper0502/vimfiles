"***************************************************
"   我的 vim設定                
"***************************************************
"   NeoBundle設定               
"***************************************************
if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath^=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'
"****************************************************
"   我要安裝的Bundle                        
"****************************************************

"" basic Bundle
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs.git'
NeoBundle 'vim-scripts/The-NERD-Commenter'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'tpope/vim-commentary'

"" SnapMate
"NeoBundle 'MarcWeber/vim-addon-mw-utils'
"NeoBundle 'tomtom/tlib_vim'
"NeoBundle 'garbas/vim-snipmate'
"NeoBundle 'honza/vim-snippets'

"" Custom bundles

"" C language Bundle
"NeoBundle 'vim-scripts/c.vim'

"" Python Bundle
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'Yggdroot/indentLine'

"" Javascript Bundle
NeoBundle 'jelera/vim-javascript-syntax'

"" HTML Bundle
NeoBundle 'amirh/HTML-AutoCloseTag'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'gorodinskiy/vim-coloresque'
NeoBundle 'tpope/vim-haml'
NeoBundle 'mattn/emmet-vim'

"" Go Lang Bundle
NeoBundle 'fatih/vim-go'

"" Ruby Bundle
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-rake'
NeoBundle 'tpope/vim-projectionist'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'ecomba/vim-ruby-refactoring'

"" markdown support
NeoBundle 'godlygeek/tabular'
NeoBundle 'plasticboy/vim-markdown'

"" vim status bar
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
"-----------------------------------------------"
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

"************************************************"
"                       Basic Setup        
"************************************************"

""
set nocompatible

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim

behave mswin

let $LANG="zh_TW.UTF-8"
set langmenu=zh_tw.utf-8

source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim

set helplang=tw

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"" no BOM(Byte Order Mark)
set nobomb

"" 設定不要有備份檔
set nobackup

"" 設定不要有交換檔
set noswapfile

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overriten by autocmd rules
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
retab

"************************************************"
"                       Visual Settings          "
"************************************************"

""
syntax on
set ruler

"" 設定主題
"set t_Co=256   "windows禁用"
colorscheme badwolf

set guifont=Consolas:h14

"" 設定行號
set number

" 高亮显示当前行/列
set cursorline
"set cursorcolumn

"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

" enable powerline-fonts
let g:airline_powerline_fonts = 1

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F



""1
"set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

""2
"set statusline=%4*%<\ %1*[%F]
"set statusline+=%4*\ %5*[%{&encoding}:: " encoding
"set statusline+=%{&fileformat}%{\"\".((exists(\"+bomb\")\ &&\ &bomb)?\",BOM\":\"\").\"\"}]%m
"set statusline+=%4*%=\ %6*%y%4*\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>
"highlight User1 ctermfg=red
"highlight User2 term=underline cterm=underline ctermfg=green
"highlight User3 term=underline cterm=underline ctermfg=yellow
"highlight User4 term=underline cterm=underline ctermfg=white
"highlight User5 ctermfg=cyan
"highlight User6 ctermfg=white

"************************************************"
"                      Abbreviations            "
"************************************************"

"" 我的快捷鍵
inoremap ;; <Esc>

"" 設定自動補齊
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap " ""<left>

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
let g:NERDTreeChDirMode=0
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 25
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <F3> :NERDTreeToggle<CR>

"" vimshell.vim
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt =  '$ '

"***********************************************"

"***********************************************"

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction
