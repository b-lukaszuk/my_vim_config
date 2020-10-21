" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
" in other words don't try to be vi compatible
set nocompatible

syntax on " basic syntax highlight for many languages

set noerrorbells " no error bells, e.g. when you go to the end of the line
" set visualbell " use visualbell instead of beeping when doing sth wrong

" tab goes 4 char long, and uses spaces
set tabstop=4 softtabstop=4
" when indenting move line by that many chars to the right/left
set shiftwidth=4
set expandtab " expand tab to spaces
set smartindent " try to indent as best as it can
set showmatch " show matching brackets

" turn hybrid line numbers on
" so relative, but the current line is absolute
set number relativenumber
set nu rnu

set nowrap " allows line to go off the screen
set smartcase " does case sensitive search

set noswapfile " does not create emacs like swap files
set nobackup " do not write backups

" set undo directory
set undodir=~/.vim/undodir/
set undofile

set incsearch " incremental search
" use case insensitive search, except when using capital letters
set ignorecase
set smartcase

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" pick a leader key
let mapleader = "\<Space>"

set encoding=utf-8

set hidden " allow hidden buffers with unsaved changes

" create new vsplit (1x2), and switch to it
noremap <leader>v <C-w>v
" create new ssplit (2x1), and switch to it
noremap <leader>s <C-w>s
" close a window
noremap <leader>q <C-w>q

" switch to other window
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k
noremap <leader>h <C-w>h
noremap <leader>l <C-w>l


" faster typing of ex commands (; but without Shift)
noremap ; :

" TODO
" install plugin manager
" install some plugins (candidates):
" - vim-ripgrep (wyszukiwanie plikow)
" - vim-fugitive (do git-a)
" - vim-surround
" - ctrlp.vim (fuzzy finding w projekcie, plikach folderow)
" - YoucompleteMe (autokompetion
