require '_lazy'
require('mason').setup()
require('mason-lspconfig').setup()
require '_alpha'
require('Comment').setup()
require('neoclip').setup()
require('octo').setup()
require 'treesitter'
require 'lsp'
require 'dressing'
require '_oil'


vim.keymap.set('n', '-', '<CMD>Oil --float<CR>', { desc = 'Open parent directory' })

-- vim.g.lightline = {
--     -- colorscheme = 'catppuccin',
--     -- active = {
--     --     left = {
--     --         { 'mode', 'paste' },
--     --         { 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' }
--     --     }
--     -- }
--     -- in lua, the above line is syntactic sugar for:
--     -- ['colorscheme'] = 'catppuccin'
--     -- this may be helpful if the option name has a reserved symbol in it like + or -
--     -- ['key-here'] = 'value'
-- }
--
