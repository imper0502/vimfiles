# imper0502 的 vim 設定檔
## [vim-plug](https://github.com/junegunn/vim-plug)
- 我使用的套件管理器
## [vimcdoc-tw](https://github.com/chusiang/vimcdoc-tw)
- 目前目前正體中文只有找到 7.4 版，簡體中文有 8.0 版
- 我用 opencc 自行翻譯了一個 8.0 的 [Vim 中文說明手冊](https://github.com/imper0502/vimcdoc-tw)

# Windows 安裝
```
git clone -b windows --single-branch --depth 1 https://github.com/imper0502/vimfiles.git

iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim | ni $HOME/vimfiles/autoload/plug.vim -Force

vim

:PlugInstall

:e $MYVIMRC 
```

> ## **vimrc** for Windows PowerShell/Cmd
> - system vimrc file__: `$VIM\vimrc`
> - user vimrc file____: `$HOME\\_vimrc`
> - 2nd user vimrc file: `$HOME\vimfiles\vimrc` -> _I use this one._
> - 3nd user vimrc file: `$VIM\\_vimrc`
> - 由 `vim --version` 得知。

> ## **gvimrc** for Windows GUI
> - system gvimrc file__: `$VIM\gvimrc`
> - user gvimrc file____: `$HOME\\_gvimrc`
> - 2nd user gvimrc file: `$HOME\vimfiles\gvimrc` -> _I use > this one._
> - 3nd user gvimrc file: `$VIM\\_gvimrc`

> ## **.vimrc** is for 'cygwin' or 'git for windows' or 'msys2'
> - system vimrc file__: `/etc/vimrc`
> - user vimrc file____: `$HOME/.vimrc`
> - 2nd user vimrc file: `$HOME/.vim/vimrc` -> _I use this one._

# Ubuntu/WSL 安裝
```
git clone -b ubuntu --single-branch --depth 1 https://github.com/imper0502/vimfiles.git

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim

:PlugInstall

:e $MYVIMRC 
```

> ## branch::Ubuntu is for Ubuntu
> - system vimrc file__:
> - user vimrc file____:
> - 2nd user vimrc file: