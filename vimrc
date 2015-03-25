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

Plugin 'ervandew/supertab'

set t_Co=256
syntax enable
au BufNewFile,BufRead *.js.coffee set filetype=coffee
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

"Turn on the WiLd menu
set wildmenu

"Set to auto read when a file is changed from the outside
set autoread

"Ignore case when searching
set ignorecase
"When searching try to be smart about cases 
set smartcase
"Highlight search results
set hlsearch
"Makes search act like search in modern browsers
set incsearch

"Show matching brackets when text indicator is over them
set showmatch
"How many tenths of a second to blink when matching brackets
set mat=2

"No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

