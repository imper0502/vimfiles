"******************************************************
" Basic Setup
"******************************************************

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set helplang=tw

"" no BOM(Byte Order Mark)
set nobomb
set nobackup
set noswapfile

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overriten by autocmd rules
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
retab

"****************************************************
" Visual Settings
"****************************************************

""
syntax on
set ruler
set number

"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10
set title
set titleold="Terminal"
set titlestring=%F
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

"****************************************************
" Abbreviations
"****************************************************

""
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap " ""<left>

""
inoremap ;; <Esc>

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

"********************************************
"********************************************

""
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim

""
behave mswin

"*********************************************
"*********************************************

""
function! TabAutoComplete()
  let col = col(".") - 1
    if !col || getline(".")[col - 1] !~ '\k'
      return "\<tab>"
    else
      return "\<c-n>"
  endif
endfunction

""
inoremap <tab> <c-r>=TabAutoComplete()<cr>

"********************************************
"********************************************
