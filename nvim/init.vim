syntax enable
syntax on
let mapleader = ','

source ~/dotfiles/nvim/plugins.vim
source ~/dotfiles/nvim/coc.vim

if (has("termguicolors"))
  set termguicolors
endif

" let g:SnazzyTransparent = 1
" let g:lightline = {'colorscheme': 'snazzy'}
" colorscheme snazzy
colorscheme embark
let g:embark_terminal_italics = 1

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
      \ }

"let me change buffers
set hidden
"soft identation tab=2 spaces
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2
"smart word wrap
set breakindent
"Set to auto read when a file is changed from the outside
set autoread
" Makes popup menu smaller
set pumheight=10                        
"Turn on the WiLd menu
set wildmenu
"Ignore case when searching
set ignorecase
"When searching try to be smart about cases
set smartcase
"Highlight search results
set hlsearch
"Makes search act like search in modern browsers
set incsearch
"allows to delete text present before opening a file
set backspace=indent,eol,start
"no swap files, lets rely on git
set noswapfile
"Show matching brackets when text indicator is over them
set showmatch
"How many tenths of a second to blink when matching brackets
set mat=2
"No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" relative line numers
set ruler
set number relativenumber

" save faster
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>

" quit faster
noremap <leader>q :q<cr>

" move lines and reindent
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" yank to osxs clipboard
set clipboard=unnamed

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=0
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeWinSize = 30
let NERDTreeShowHidden=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

"read ejs templates as html
au BufNewFile,BufRead *.ejs set filetype=html

" Ag
let g:ackprg = 'ag --vimgrep'

" NerdCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Ale config 4 prettier (linter)
"    'javascript': ['prettier', 'eslint'],
let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'typescript': ['prettier'],
\    'typescriptreact': ['prettier'],
\    'scss': ['prettier'],
\    'html': ['prettier']
\}

let g:ale_linters = {
\   'javascript': ['eslint', 'jshint'],
\   'typescript': ['tsserver', 'tslint'],
\   'vue': ['eslint']
\}
" let g:ale_fixers = ['prettier', 'eslint']
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1

let g:ale_set_highlights = 0
" let g:ale_javascript_eslint_suppress_eslintignore = 1
" let g:ale_javascript_eslint_suppress_missing_config = 1

let g:ale_sign_error = '●'
let g:ale_sign_warning = '●'
hi link ALEErrorSign    Error
hi link ALEWarningSign  Warn

" Fuzzy finder
set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf
nmap ; :Buffers<CR>
" nmap <Leader>r :Tags<CR>
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
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --fixed-strings --ignore-case --hidden --follow --glob "!.git/* ./web.test" --color "always" '.shellescape(<q-args>), 1, <bang>0)

" auto source when writing to init.vm alternatively you can run :source $MYVIMRC
au! BufWritePost $MYVIMRC source %
