set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'morhetz/gruvbox'

call vundle#end()            " required

syntax on
set nocompatible
set nowrap
set encoding=utf8
set cursorline

" set the backspace to delete normally
set backspace=indent,eol,start

" indent
set autoindent
set smartindent

" set the backspace to delete normally
set backspace=indent,eol,start

" no backup
set nobackup
set nowritebackup

" show line numbers
set number
set ruler

" Some basic PSR code style rules
set tabstop=4     " Tab width
set softtabstop=4 " Soft tab width
set shiftwidth=4  " Shift width
set expandtab     " Use spaces instead of tabs

