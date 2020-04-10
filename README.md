# 我的vim設定
------
## 使用[vim-plug](https://github.com/junegunn/vim-plug)管理套件
 1. 自行安裝**Plug**
 2. `:edit $MYVIMRC`
 3. 或是`git clone 我的設定檔`，依系統改名
 4. `:PlugInstall`

# 注意！用不同分支區分系統，主分支只放說明檔
------
## branch::windows is for Windows.
### **vimrc** for Windows PowerShell/Cmd
 - system vimrc file__: `$VIM\vimrc`
 - user vimrc file____: `$HOME\\_vimrc`
 - 2nd user vimrc file: `$HOME\vimfiles\vimrc` -> _I use this one._
 - 3nd user vimrc file: `$VIM\\_vimrc`
 - 由 `vim --version` 得知。


### **gvimrc** for Windows GUI
 - system gvimrc file__: `$VIM\gvimrc`
 - user gvimrc file____: `$HOME\\_gvimrc`
 - 2nd user gvimrc file: `$HOME\vimfiles\gvimrc` -> _I use this one._
 - 3nd user gvimrc file: `$VIM\\_gvimrc`


### **.vimrc** is for 'cygwin' or 'git for windows' or 'msys2'
 - system vimrc file__: `/etc/vimrc`
 - user vimrc file____: `$HOME/.vimrc`
 - 2nd user vimrc file: `$HOME/.vim/vimrc` -> _I use this one._


## branch::Ubuntu is for Ubuntu
 - system vimrc file__:
 - user vimrc file____:
 - 2nd user vimrc file:
------

 [vimcdoc-tw](https://github.com/chusiang/vimcdoc-tw)
- 目前目前正體中文只有找到7.4版，簡體中文有8.0版
- 我用 opencc 自行翻譯了一個 8.0 的 [Vim 中文說明手冊](https://github.com/imper0502/vimcdoc-tw)



