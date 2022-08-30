" path to this file: ~/.config/nvim/
" to check what an option means type
" :options<Enter>
" :h searchWord

let home = expand('~')

" global settings
exec 'source' home . '/.config/nvim/defaultSettingsConfig.vim'

" global key maps
exec 'source' home . '/.config/nvim/globalKeyMapsConfig.vim'

" plugin manager
" https://github.com/junegunn/vim-plug
" reload .init.vim (:so %) and :PlugInstall to install plugins
call plug#begin('~/.vim/plugged')
" https://github.com/nvim-telescope/telescope.nvim
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'" colorscheme
Plug 'gruvbox-community/gruvbox'
" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'
" https://github.com/neovim/nvim-lspconfig
Plug 'neovim/nvim-lspconfig'
" https://github.com/jiangmiao/auto-pairs
Plug 'jiangmiao/auto-pairs'
" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'
" https://github.com/neoclide/coc.nvim
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-css', 'coc-json', 'coc-emmet', 'coc-eslint', 'coc-metals' , 'coc-prettier', 'coc-tsserver']
Plug 'scalameta/nvim-metals'
call plug#end()
" reload .init.vim (:so %) and :PlugInstall to install plugins

" nerdtree
exec 'source' home . '/.config/nvim/nerdtreeConfig.vim'

" colorscheme
exec 'source' home . '/.config/nvim/colorSchemeConfig.vim'

" telescope
exec 'source' home . '/.config/nvim/telescopeConfig.vim'

" coc settings (also in coc-settings.json file)
exec 'source' home . '/.config/nvim/cocConfig.vim'
