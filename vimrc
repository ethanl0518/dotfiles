set nu
set nocompatible
set mouse=a
set paste
set clipboard=unnamedplus

set tabstop=4        "A tab is 4 spaces
set expandtab        "Always uses spaces instead of tabs
set softtabstop=4    "Insert 4 spaces when tab is pressed
set shiftwidth=4     "An indent is 4 spaces


set backup
set backupdir=~/.vim/dirs/backups
set undofile
set undodir=~/.vim/dirs/undos

"remember last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


set nocompatible 
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdcommenter'

call vundle#end()
filetype plugin indent on 
