local telescope = require('telescope')
telescope.setup {

  defaults = {
    preview = {
      treesitter = false
    }
  }
}
_ = require("telescope").load_extension "fzf"
