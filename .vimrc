set nocompatible

"vundle stuff
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on
"end vundle stuff 

"Make line numbers relative, while still showing current line number
set relativenumber
set number

"Syntax highlighting
syntax enable

filetype plugin on 

set path+=**

set wildmenu

command! MakeTags !ctags -R .

"Change tab to four spaces instead of 8
set tabstop=4
set expandtab

"keep the tab spacing consistent with auto-indent
set shiftwidth=0

"Indent when moving down a line
set autoindent
filetype plugin indent on

"Show matching braces
set showmatch

"clang complete stuff
let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'

set backspace=indent,eol,start

"autocomplete stuff (C-x C-o to bring up the choices)
autocmd Filetype html set omnifunc=htmlcomplete#CompleteTags
autocmd Filetype javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd Filetype css set omnifunc=csscomplete#CompleteCSS
