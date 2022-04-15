" path to this file: ~/.config/nvim/
" to check what an option means type
" :options<Enter>
" :h searchWord
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set exrc
set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set nu
set nowrap
set ignorecase
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set showmatch
set colorcolumn=80
set cmdheight=2
set updatetime=50
set shortmess+=c

" leaderkey
let mapleader = "\<Space>"

" remaps
noremap <leader>v <C-w>v
noremap <leader>s <C-w>s
noremap <leader>q <C-w>q
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k
noremap <leader>n <C-w>n
noremap <leader>l <C-w>l
noremap <leader>w :w<Enter>
noremap <leader>wq :wq<Enter>
noremap <leader>q :q<Enter>
noremap <leader>; :

" plugin manager
" https://github.com/junegunn/vim-plug
" reload .init.vim (:so ./init.vim) and :PlugInstall to install plugins
call plug#begin('~/.vim/plugged')
" https://github.com/nvim-telescope/telescope.nvim
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" colorscheme
Plug 'gruvbox-community/gruvbox'
" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'
call plug#end()
" reload .init.vim (:so ./init.vim) and :PlugInstall to install plugins

" colorscheme
autocmd vimenter * ++nested colorscheme gruvbox

" telescope
" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" nerdtree
nnoremap <leader>nt :NERDTreeFocus<CR>
