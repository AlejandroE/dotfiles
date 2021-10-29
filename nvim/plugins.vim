" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

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
