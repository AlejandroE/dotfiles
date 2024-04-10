call plug#begin()

" Plug 'neoclide/coc.nvim', {'branch': 'release'}

"""""
Plug 'neovim/nvim-lspconfig'
"""""
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

Plug 'stevearc/dressing.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

Plug 'AckslD/nvim-neoclip.lua'

Plug 'pwntester/octo.nvim'

Plug 'goolord/alpha-nvim'

Plug 'numToStr/Comment.nvim'
"""""
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
" Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'mileszs/ack.vim'
Plug 'itchyny/lightline.vim'
"Plug 'pangloss/vim-javascript'
"Plug 'chemzqm/vim-jsx-improve'
"Plug 'maxmellon/vim-jsx-pretty'
"Plug 'jelera/vim-javascript-syntax'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'w0rp/ale'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'connorholyday/vim-snazzy'
" Plug 'ervandew/supertab'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'hashivim/vim-terraform'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'leafgarland/typescript-vim'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }

Plug 'vim-test/vim-test'

"platformio
Plug 'coddingtonbear/neomake-platformio'
"webgl
Plug 'tikhomirov/vim-glsl'
Plug 'jparise/vim-graphql'
Plug 'github/copilot.vim'
call plug#end()
