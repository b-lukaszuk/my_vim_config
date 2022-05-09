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
set number relativenumber
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
set splitbelow
set splitright

" leaderkey
let mapleader = "\<Space>"

" remaps
noremap <leader>; :
noremap <leader>e :E<Enter>
noremap <leader>bk :bd<Enter> " buffer kill
noremap <leader>fs :w<Enter> " file save
noremap <leader>wh <C-w>h
noremap <leader>wj <C-w>j
noremap <leader>wk <C-w>k
noremap <leader>wl <C-w>l
noremap <leader>wq :q<Enter> " window kill
noremap <leader>ws <C-w>s
noremap <leader>wv <C-w>v

let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" plugin manager
" https://github.com/junegunn/vim-plug
" reload .init.vim (:so %) and :PlugInstall to install plugins
call plug#begin('~/.vim/plugged')
" https://github.com/nvim-telescope/telescope.nvim
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" colorscheme
Plug 'gruvbox-community/gruvbox'
" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'
call plug#end()
" reload .init.vim (:so %) and :PlugInstall to install plugins

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
