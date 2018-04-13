" Aleksa Gordic

" Plugins {{{
"my old plugin manager
"runtime bundle/vim-pathogen/autoload/pathogen.vim 
"execute pathogen#infect()
set nocompatible
filetype off

set laststatus=2 " always display powerline
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/powerline/bindings/vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'powerline/powerline' "currently doesn't work...
Plugin 'sjl/gundo.vim'

call vundle#end()
filetype plugin indent on
let g:gundo_prefer_python3 = 1  " hack to make gundo work with python3!
" }}}
" Colors {{{
syntax enable
colorscheme badwolf	" just some cool colorscheme I pulled from GitHub
" }}}
" Spaces & Tabs {{{
set tabstop=4	" number of visual spaces per TAB
set softtabstop=4	" number of spaces in tab when editing
set expandtab	" tabs are spaces  
" }}}
" UI Layout {{{
set number	" show line number
set showcmd	" show command in bottom right corner
set cursorline  " highlight current line
"filetype plugin indent on  " load filetype-specific indent files
set wildmenu    " visual autocomplete for command menu
set lazyredraw  " redraw only when we need to
set showmatch   " highlight matching [{()}]
" }}}
" Searching {{{
set ignorecase  " ignore case when searching
set incsearch   " search as characters are entered
set hlsearch    " higlight matches
" }}}
" Folding {{{
set foldenable  " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10  "10 nested fold max
set foldmethod=indent   " fold based on indent level
" }}}
" Shortcuts {{{
let mapleader=","   " leader is comma
inoremap jk <esc>   " jk is escape
nnoremap <leader><space> :nohlsearch<CR>    " turn off search highlight
nnoremap <space> za " space open/closes folds
nnoremap <leader>u :GundoToggle<CR> " toggle gundo
nnoremap <leader>ev :vsp $MYVIMRC<CR> " edit vimrc
nnoremap <leader>sv :source $MYVIMRC<CR> " load vimrc bindings
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
" }}}
" Backups {{{
set undodir=~/.vim/tmp/undo
set backupdir=~/.vim/tmp/backup
set directory=~/.vim/tmp/swap
set backupskip=/tmp/*,/private/tmp/*
set backup
set writebackup

" persist (g)undo tree between sessions
set undofile
set history=100
set undolevels=100
" }}}

set modelines=1 " interpret next comment as command only for this file
" vim:foldmethod=marker:foldlevel=0
