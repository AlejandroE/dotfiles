require('Comment').setup()
require "telescope"
require "lsp.cmp"
require "lsp.on_attach"
require "lsp.null-ls"
completionKinds = require "lsp.completion-kinds"
completionKinds.setup()
-- Trouble 

require("trouble").setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}

