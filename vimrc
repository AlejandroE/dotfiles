set rtp+=$HOME/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
filetype plugin indent on

" ALL OF THE ABOVE IS ALSO REQUIRED
" FOR SUCCESSFUL VUNDLE INSTALL
" THE FOLLOWING IS NEW FOR US…

Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/The-NERD-tree'
" Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-sensible'

Plugin 'kchmck/vim-coffee-script'
Plugin 'bling/vim-airline'

Plugin 'tpope/vim-fugitive'

Plugin 'git@github.com:hail2u/vim-css3-syntax.git'
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'

Plugin 'git@github.com:tpope/vim-rails.git'

set t_Co=256
syntax enable
set background=dark
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
colorscheme solarized
set number

"set background=dark
"color solarized

"allows to delete text present before opening a file
set backspace=indent,eol,start

"smart word wrap
set breakindent

"soft identation tab=2 spaces
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2
