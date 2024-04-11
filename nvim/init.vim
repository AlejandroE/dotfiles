syntax on

let mapleader = ','

luafile ~/dotfiles/nvim/lua/init.lua
" source ~/dotfiles/nvim/plugins.vim
" source ~/dotfiles/nvim/coc.vim

if (has("termguicolors"))
  set termguicolors
endif

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


" lua << EOF
"   require("catppuccin").setup()
" EOF
" let g:catppuccin_flavour = "mocha"
" colorscheme catppuccin


"colorscheme embark
"let g:embark_terminal_italics = 1

" function! CocCurrentFunction()
    " return get(b:, 'coc_current_function', '')
" endfunction

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
     \ }
      " \ 'component_function': {
      " \   'cocstatus': 'coc#status',
      " \   'currentfunction': 'CocCurrentFunction'
      " \ },
"vim-test config
let g:test#javascript#runner = 'jest'
let test#strategy = 'neovim'

"keep the diagnostics gutter open      
set signcolumn=yes
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
" disable mouse default in neovim
set mouse=

" relative line numers
set ruler
set number relativenumber

" nvim-cmp
set completeopt=menu,menuone,noselect

" beahve like other caps
nnoremap Y y$

"keep it centred 
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ'z

" control udo sequence
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" save faster
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>

" quit faster
noremap <leader>q :q<cr>

" move lines and reindent
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Show the quickfix window
nnoremap <Leader>co :copen<CR>

" Hide the quickfix window % loclist
nnoremap <Leader>cc :windo lcl\|ccl<CR>

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

" " Ale config 4 prettier (linter)
" "    'javascript': ['prettier', 'eslint'],
" let g:ale_fixers = {
" \    'javascript': ['eslint'],
" \    'typescript': ['prettier'],
" \    'typescriptreact': ['prettier'],
" \    'scss': ['prettier'],
" \    'html': ['prettier']
" \}

" let g:ale_linters = {
" \   'javascript': ['eslint', 'jshint'],
" \   'typescript': ['tsserver', 'tslint'],
" \   'vue': ['eslint']
" \}
" " let g:ale_fixers = ['prettier', 'eslint']
" let g:ale_fix_on_save = 1
" let g:ale_javascript_prettier_use_local_config = 1

" let g:ale_set_highlights = 0
" " let g:ale_javascript_eslint_suppress_eslintignore = 1
" " let g:ale_javascript_eslint_suppress_missing_config = 1

" let g:ale_sign_error = '●'
" let g:ale_sign_warning = '●'
" hi link ALEErrorSign    Error
" hi link ALEWarningSign  Warn


" Trouble
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fr <cmd>Telescope oldfiles<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nmap ; :Telescope buffers<CR>

" Snipets
" expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" see https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)
highlight LspDiagnosticsDefaultError guifg=#FF0000

let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['typescript']

" Fuzzy finder
set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf
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
