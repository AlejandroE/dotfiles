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
Bundle 'tpope/vim-sensible'

" Plugin 'kchmck/vim-coffee-script'
"Plugin 'bling/vim-airline'
Plugin 'itchyny/lightline.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'git@github.com:hail2u/vim-css3-syntax.git'
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'

" ack
Plugin 'mileszs/ack.vim'

Plugin 'ervandew/supertab'

" vim-react-snippets:
Bundle "justinj/vim-react-snippets"

" Ultisnips
" Bundle "SirVer/ultisnips"

" Other sets of snippets (optional):
Bundle "honza/vim-snippets"

" Automatically close HTML/XML tags.
Plugin 'alvan/vim-closetag'

" Highlight enclosing HTML/XML tags.
Plugin 'valloric/MatchTagAlways'

" jsx syntax
"Plugin 'Quramy/vim-js-pretty-template'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'jelera/vim-javascript-syntax'
" javascript and libs highlighting
"Bundle 'pangloss/vim-javascript'
"Plugin 'crusoexia/vim-javascript-lib'
"Plugin 'othree/yajs.vim'
"Plugin 'maxmellon/vim-jsx-pretty'

" JSX syntax
"Bundle 'mxw/vim-jsx'
"Plugin 'chemzqm/vim-jsx-improve'

" fzf
" Plugin '/usr/local/opt/fzf'
Plugin 'junegunn/fzf.vim'

" jsbeautify, autoformat
" Plugin 'maksimr/vim-jsbeautify'

" linter
Plugin 'w0rp/ale'

"cmd+d
Plugin 'terryma/vim-multiple-cursors'

"Nord Colour Scheme
"Plugin 'arcticicestudio/nord-vim'

"Oceanic NExt colour scheme
"Plugin 'mhartington/oceanic-next'

"Plugin 'drewtempelmeyer/palenight.vim'

Plugin 'connorholyday/vim-snazzy'

"eslint
"Plugin 'vim-syntastic/syntastic.git'

call vundle#end()            " required
filetype plugin indent on    " required

" fuzzy finder
set rtp+=/usr/local/opt/fzf

set t_Co=256

syntax enable

au BufNewFile,BufRead *.js.coffee set filetype=coffee

syntax on
"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1
"colorscheme OceanicNext

" let g:airline_theme='oceanicnext'

"set t_Co=256
set conceallevel=1

set number

let mapleader = ','

"set background=dark
"colorscheme palenight
"let g:lightline.colorscheme = 'palenight'

" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:SnazzyTransparent = 1
let g:lightline = {'colorscheme': 'snazzy'}
colorscheme snazzy

if (has("termguicolors"))
  set termguicolors
endif

"color solarized

"allows to delete text present before opening a file
set backspace=indent,eol,start

"swap buffers without saving first
set hidden

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
"set t_8f=[38;2;%lu;%lu;%lum
"set t_8b=[48;2;%lu;%lu;%lum

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

" fix styled components highlighting wuen mixed with jsx
" https://github.com/styled-components/vim-styled-components/issues/64
autocmd BufEnter *.{js,ts,jsx,tsx} :syntax sync fromstart

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
"don't check jsx ext
"let g:jsx_ext_required = 0
let g:vim_jsx_pretty_colorful_config = 0

" filenames like *.xml, *.html, *.xhtml, ...
" Then after you press <kbd>&gt;</kbd> in these files, this plugin will try to close the current tag.
let g:closetag_filenames = '*.html,*.xhtml,*.js'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non closing tags self closing in the specified files.
let g:closetag_xhtml_filenames = '*.js,*.jsx'

" integer value [0|1]
" This will make the list of non closing tags case sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'javascript' : 1
    \}

" Ag
let g:ackprg = 'ag --vimgrep'

" Ale config 4 prettier (linter)
let g:ale_fixers = {}
let g:ale_fixers = ['prettier', 'eslint']
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1

" FZF (replaces Ctrl-P, FuzzyFinder and Command-T)
set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf
nmap ; :Buffers<CR>
nmap <Leader>r :Tags<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>a :Find<CR>

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

