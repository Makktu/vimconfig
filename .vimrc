" run :PlugInstall to install plugins
" and run :PlugUpdate periodically
"___________________________________
"___________________________________

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    " https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()

Plug 'sheerun/vim-polyglot'

call plug#end()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#begin()
  Plug 'preservim/nerdtree'
call plug#end()

set foldcolumn=2
highlight FoldColumn ctermbg=0
" create a margin between contents and left side of window and make it transparent

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

set laststatus=2
" Always show statusline.

set display=lastline
" Show as much as possible of the last line.

set showcmd
" Show already typed keys when more are expected

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
