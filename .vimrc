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

" Start NERDTree and leave the cursor in it.
" autocmd VimEnter * NERDTree

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

set foldcolumn=2
highlight FoldColumn ctermbg=None
" create a margin between contents and left side of window
" and make it same colour as theme background

set wrap
" enable soft wrapping at the edge of the screen

set linebreak
" make it not wrap in the middle of a "word"

set scrolloff=3

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

" Mac specific fix for function keys
map <Esc>OP <F1>
map <Esc>OQ <F2>
map <Esc>OR <F3>
map <Esc>OS <F4>
map <Esc>[16~ <F5>
map <Esc>[17~ <F6>
map <Esc>[18~ <F7>
map <Esc>[19~ <F8>
map <Esc>[20~ <F9>
map <Esc>[21~ <F10>
map <Esc>[23~ <F11>
map <Esc>[24~ <F12>

" (map to F3) - insert current day, time and date
:map! <F3> <C-R>=strftime('%c')<CR>

map <F2> :NERDTreeToggle<CR>

map <F1> :set nu!<CR>
