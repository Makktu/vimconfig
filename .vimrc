" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    " https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()

Plug 'sheerun/vim-polyglot'

call plug#end()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

set wrap
" enable soft wrapping at the edge of the screen

set linebreak
" make it not wrap in the middle of a "word"

" Enable file type detection. Vim will try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting ON.
syntax on

" Add line numbers per line, left-hand side.
set number

" Highlight cursor line under the cursor (horizontal).
set cursorline

" Highlight cursor line under the cursor vertical.
" set cursorcolumn

" Set commands to save in history - default number is 20.
set history=100

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave similarly to Bash completion.
set wildmode=list:longest

" Certain files should not be edited with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" enable mouse to resize windows
set mouse=a
