" Editor defaults
set ff=unix
set number
set nobackup
set ai
set modeline
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set backspace=indent,eol,start
set nocompatible
set showmatch
set incsearch
set hidden
set history=1000
set title
set ruler
set backupdir=/tmp
set directory=/tmp

" Syntax
syntax on
color twilight256
filetype plugin on
filetype indent off

" Save folds
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" Force filetypes
au BufRead,BufNewFile *.py set filetype=python

" GUI Stuff
if has('gui_running')
    set mouse=a
    set background=light
    color solarized
    set guioptions+=mTrbLl
    set guioptions-=mTrbLl
    set guifont=DejaVu\ Sans\ Mono\ 10

    set cursorline

    " Change font size
    map <silent> <leader>+ :set guifont=DejaVu Sans Mono 14<CR>
    map <silent> <leader>- :set guifont=DejaVu Sans Mono 10<CR>
endif

" Fix ' uselessness with marks
nnoremap ' `
nnoremap ` '

" Accomodate for your fat fingers
command! W w

" Leader
let mapleader = ","

" Change tab stop
map <silent> <leader>t2 :set tabstop=2 softtabstop=2 shiftwidth=2 expandtab<CR>
map <silent> <leader>t4 :set tabstop=4 softtabstop=4 shiftwidth=4 expandtab<CR>

" Copy whole document to clipboard
map <silent> <leader>cd magg"+yG'a
" Paste from clipboard
map <silent> <leader>P "+P
map <silent> <leader>p "+p

" NERDTree
map <silent> <leader>f :NERDTreeToggle<CR>
    let NERDTreeChDirMode = 1

" Better buffer management
map <silent> <leader>b :buffers<CR>:buffer<Space>

" Search
map <leader>s :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

" Sudo write (,W) (stolen from gf3)
map <leader>W :w !sudo tee %<CR>
