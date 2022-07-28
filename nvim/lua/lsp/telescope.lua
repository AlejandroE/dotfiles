_telescope = require('telescope')

_telescope.setup {
  defaults = {
    preview = {
      treesitter = false
    },
    path_display={"truncate"}
  },
  pickers = {
    buffers = {
      ignore_current_buffer = true,
      sort_mru = true,
    },
  }
}
require('telescope').load_extension('neoclip')
require('telescope').load_extension('fzf')
-- _ = require("telescope").load_extension "fzy"
