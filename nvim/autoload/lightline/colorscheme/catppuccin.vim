" =============================================================================
" Filename: autoload/lightline/colorscheme/catppuccin.vim
" License: MIT License
" =============================================================================

let s:base = [ '#1e1e2e', 235 ]
let s:mantle = [ '#181825', 234 ]
let s:surface0 = [ '#313244', 236 ]
let s:surface1 = [ '#45475a', 238 ]
let s:overlay0 = [ '#6c7086', 243 ]
let s:text = [ '#cdd6f4', 189 ]
let s:subtext1 = [ '#bac2de', 146 ]
let s:blue = [ '#89b4fa', 111 ]
let s:green = [ '#a6e3a1', 151 ]
let s:mauve = [ '#cba6f7', 183 ]
let s:peach = [ '#fab387', 216 ]
let s:red = [ '#f38ba8', 210 ]
let s:yellow = [ '#f9e2af', 222 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ s:base, s:blue, 'bold' ], [ s:text, s:surface0 ] ]
let s:p.normal.middle = [ [ s:overlay0, s:mantle ] ]
let s:p.normal.right = [ [ s:base, s:blue, 'bold' ], [ s:subtext1, s:surface0 ] ]
let s:p.normal.error = [ [ s:red, s:mantle ] ]
let s:p.normal.warning = [ [ s:yellow, s:mantle ] ]

let s:p.insert.left = [ [ s:base, s:green, 'bold' ], [ s:text, s:surface0 ] ]
let s:p.insert.right = copy(s:p.insert.left)

let s:p.replace.left = [ [ s:base, s:red, 'bold' ], [ s:text, s:surface0 ] ]
let s:p.replace.right = copy(s:p.replace.left)

let s:p.visual.left = [ [ s:base, s:mauve, 'bold' ], [ s:text, s:surface0 ] ]
let s:p.visual.right = copy(s:p.visual.left)

let s:p.inactive.left = [ [ s:overlay0, s:mantle ], [ s:surface1, s:mantle ] ]
let s:p.inactive.middle = [ [ s:surface1, s:mantle ] ]
let s:p.inactive.right = [ [ s:overlay0, s:mantle ] ]

let s:p.tabline.left = [ [ s:subtext1, s:surface0 ] ]
let s:p.tabline.tabsel = [ [ s:base, s:peach, 'bold' ] ]
let s:p.tabline.middle = [ [ s:surface1, s:mantle ] ]
let s:p.tabline.right = copy(s:p.normal.right)

let g:lightline#colorscheme#catppuccin#palette = lightline#colorscheme#flatten(s:p)
