require "telescope"
require "lsp.ui"
require "lsp.cmp"
require "lsp.on_attach"
require "lsp.null-ls"
completionKinds = require "lsp.completion-kinds"
completionKinds.setup()
require("trouble").setup {}

