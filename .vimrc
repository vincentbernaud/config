" ---------- Vundle and plugins init ----------
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/vim/Vundle.vim/
" call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/afs/.confs/config/vim/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'vim-airline/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

call vundle#end()            " required
filetype plugin indent on    " required

" ---------- Vundle and plusgin end ----------
"
" ---------- Vim basic commands ----------
"
" Enable syntax higlighting
syntax on
" Set the 80th column to be displayed
set cc=80
" Remap the tab to be 4 spaces #CodingStyle
set shiftwidth=4
" Set tab to indent by 4 #CodingStyle
set sts=4
" Set tabs to be space #CodingStyle
set expandtab
" Display line number
set number
" Set autoindent
set autoindent
" Enable line wrapping
set wrap
" Auto wrap on line 79
set textwidth=79
" Autowrite files
set autowrite
set autoread
set showmode
autocmd FileType make set noexpandtab

" Show and remove trailing whitespace

autocmd FileType c,h,cpp,java,php autocmd BufWritePre <buffer> %s/\s\+$//e
autocmd Filetype c,h match Error /\s\+$/

" Change conditional structure indentation

autocmd FileType c,h autocmd BufWritePre <buffer> %s/if(/if (/e
autocmd FileType c,h autocmd BufWritePre <buffer> %s/for(/for (/e
autocmd FileType c,h autocmd BufWritePre <buffer> %s/while(/while (/e
autocmd FileType c,h autocmd BufWritePre <buffer> %s/switch(/switch (/e

" ---------- Key mapping ----------
"
nmap ; :
imap ,, <ESC>
