require('oil').setup {
  default_file_explorer = false,
  float = {
    -- Padding around the floating window
    padding = 10,
    max_width = 80,
    max_height = 40,
    border = 'rounded',
    win_options = {
      winblend = 0,
    },
    -- This is the config that will be passed to nvim_open_win.
    -- Change values here to customize the layout
    override = function(conf)
      return conf
    end,
  },
}
