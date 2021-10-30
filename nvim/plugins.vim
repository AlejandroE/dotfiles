call plug#begin()

"Plug 'neovim/nvim-lspconfig'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'mileszs/ack.vim'
Plug 'itchyny/lightline.vim'
Plug 'pangloss/vim-javascript'
"Plug 'chemzqm/vim-jsx-improve'
Plug 'maxmellon/vim-jsx-pretty'
"Plug 'jelera/vim-javascript-syntax'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
" Plug 'terryma/vim-multiple-cursors'
Plug 'connorholyday/vim-snazzy'
" Plug 'ervandew/supertab'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdcommenter'
Plug 'hashivim/vim-terraform'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'leafgarland/typescript-vim'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'skbolton/embark'
" Plug 'kaicataldo/material.vim'
" Plug 'dracula/vim', { 'as': 'dracula' }

"platformio
Plug 'coddingtonbear/neomake-platformio'
"webgl
Plug 'tikhomirov/vim-glsl'
Plug 'jparise/vim-graphql'
call plug#end()


" coc extensions
let g:coc_global_extensions = []
" easily install extension
let g:coc_global_extensions += ['coc-marketplace']
" snippets
let g:coc_global_extensions += ['coc-ultisnips']
" json support & coc-settings.json autocomplete
let g:coc_global_extensions += ['coc-json']
" vimscript support
let g:coc_global_extensions += ['coc-vimlsp']
" javascript/typescript
let g:coc_global_extensions += ['coc-eslint', 'coc-tsserver']
" emmet
let g:coc_global_extensions += ['coc-emmet']
" css
let g:coc_global_extensions += ['coc-css']
" react
let g:coc_global_extensions += ['coc-react-refactor', 'coc-cssmodules']

