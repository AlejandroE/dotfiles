" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" set rtp+=$HOME/.vim/bundle/vundle
" call vundle#rc()
" Bundle 'gmarik/vundle'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

filetype plugin indent on

" ALL OF THE ABOVE IS ALSO REQUIRED
" FOR SUCCESSFUL VUNDLE INSTALL
" THE FOLLOWING IS NEW FOR US…

" Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/The-NERD-tree'
" Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-sensible'

"Plugin 'kchmck/vim-coffee-script'
Plugin 'bling/vim-airline'

Plugin 'tpope/vim-fugitive'

Plugin 'git@github.com:hail2u/vim-css3-syntax.git'
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'

" ack
Plugin 'mileszs/ack.vim'

"Plugin 'git@github.com:tpope/vim-rails.git'

Plugin 'ervandew/supertab'

" vim-react-snippets:
Bundle "justinj/vim-react-snippets"

" Ultisnips
Bundle "SirVer/ultisnips"

" Other sets of snippets (optional):
Bundle "honza/vim-snippets"

" Automatically close HTML/XML tags.
Plugin 'alvan/vim-closetag'

" Highlight enclosing HTML/XML tags.
Plugin 'valloric/MatchTagAlways'

" jsx syntax
"Plugin 'Quramy/vim-js-pretty-template'

" javascript and libs highlighting
"Bundle 'pangloss/vim-javascript'
"Plugin 'crusoexia/vim-javascript-lib'
"Plugin 'othree/yajs.vim'
"Plugin 'maxmellon/vim-jsx-pretty'

" JSX syntax
"Bundle 'mxw/vim-jsx'
Plugin 'chemzqm/vim-jsx-improve'

" fzf
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'

" jsbeautify, autoformat
" Plugin 'maksimr/vim-jsbeautify'

" linter
Plugin 'w0rp/ale'

"cmd+d
Plugin 'terryma/vim-multiple-cursors'

"Nord Colour Scheme
"Plugin 'arcticicestudio/nord-vim'

"Oceanic NExt colour scheme
Plugin 'mhartington/oceanic-next'

"eslint
"Plugin 'vim-syntastic/syntastic.git'

call vundle#end()            " required
filetype plugin indent on    " required

" fuzzy finder
set rtp+=/usr/local/opt/fzf

"set t_Co=256
syntax enable
syntax on
au BufNewFile,BufRead *.js.coffee set filetype=coffee

"set background=dark
"let g:solarized_termtrans = 1
"let g:solarized_termcolors=256
"colorscheme monokai
"colorscheme nord

if (has("termguicolors"))
  set termguicolors
endif
colorscheme OceanicNext

let g:airline_theme='oceanicnext'

"set t_Co=256
set conceallevel=1

set number

let mapleader = ','

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

"Font conf
"set macligatures
"set guifont=Fira\ Code:h12

"tmux colors fix
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum

"no swap files, lets rely on git
set noswapfile

"delete trailling space on save
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre *.js,*.css,*.html :call <SID>StripTrailingWhitespaces()

"nerdtree cmd kb
nnoremap <F4> :NERDTreeToggle<CR>

" Configure syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_javascript_checkers = ['jscs']
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"let g:syntastic_error_symbol = "✗"
"let g:syntastic_warning_symbol = "⚠"

" yank to osxs clipboard
set clipboard=unnamed

