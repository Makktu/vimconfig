" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    " https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" run :PlugInstall to install plugins
" and run :PlugUpdate periodically
"___________________________________
"___________________________________

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }             " Start fzf (Fuzzy Finder) plugin

set nocompatible                    " Disable compatibility with vi which can cause unexpected issues.


call plug#begin()                   "
Plug 'sheerun/vim-polyglot'         " Start the Vim-Plug plugin manager
call plug#end()                     "


call plug#begin()                   "
  Plug 'preservim/nerdtree'         " Start the NERDtree plugin
call plug#end()                     "

autocmd VimEnter * NERDTree         " Start NERDTree and leave the cursor in it.

set foldcolumn=2                    " create a margin between text and window border 
highlight FoldColumn ctermbg=0      " and make the gap transparent

set laststatus=2                    " Always show statusline.

set display=lastline                " Show as much as possible of the last line.

set showcmd                         " Show already typed keys when more are expected

set wrap                            " enable soft wrapping at the edge of the screen

set linebreak                       " make it not wrap in the middle of a 'word'

filetype on                         " Enable file type detection. Vim will try to detect the type of file in use.

filetype plugin on                  " Enable plugins and load plugin for the detected file type.

filetype indent on                  " Load an indent file for the detected file type.

syntax on                           " Turn syntax highlighting ON.


set number                          " Add line numbers per line, left-hand side.


set cursorline                      " Highlight cursor line under the cursor (horizontal).

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
