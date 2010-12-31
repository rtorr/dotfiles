" Editor defaults
set ff=unix
set number
set nobackup
set ai
set modeline
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smartindent
set backspace=indent,eol,start
set nocompatible
set showmatch
set incsearch
set hidden
set history=1000
set title
set ruler
set autochdir

" Syntax
syntax on
color molokai
filetype plugin on

" Save folds
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" Force filetypes
au BufRead,BufNewFile *.py set filetype=python

" GUI Stuff
if has('gui_running')
    set mouse=a
    color twilight
    set guioptions+=mTrbLl
    set guioptions-=mTrbLl
    set guifont=DejaVu\ Sans\ Mono\ 10

    set cursorline
endif

" Leader
let mapleader = ","

" NERDTree
map <silent> <leader>f :NERDTreeToggle<CR>
let NERDTreeChDirMode = 1

" Better buffer management
nmap <silent> <leader>b :buffers<CR>:buffer<Space>

" Search
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

" Reload snippets
map <F7> :call ResetSnippets()<CR>

" Fix ' uselessness with marks
nnoremap ' `
nnoremap ` '
