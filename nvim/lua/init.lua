require "_alpha"
require "Comment".setup()
require "neoclip".setup()
require "octo".setup()
require "treesitter"
require "lsp"


-- copy over from the remote that can't be named
vim.g.clipboard = {
  name = 'pbpaste',
  copy = {
    ['+'] = 'pbcopy',
    ['*'] = 'pbcopy',
  },
  paste = {
    ['+'] = 'pbpaste',
    ['*'] = 'pbpaste',
  },
  cache_enabled = 1,
}
