local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

header = {
  "⡆⣐⢕⢕⢕⢕⢕⢕⢕⢕⠅⢗⢕⢕⢕⢕⢕⢕⢕⠕⠕⢕⢕⢕⢕⢕⢕⢕⢕⢕",
  "⢐⢕⢕⢕⢕⢕⣕⢕⢕⠕⠁⢕⢕⢕⢕⢕⢕⢕⢕⠅⡄⢕⢕⢕⢕⢕⢕⢕⢕⢕",
  "⢕⢕⢕⢕⢕⠅⢗⢕⠕⣠⠄⣗⢕⢕⠕⢕⢕⢕⠕⢠⣿⠐⢕⢕⢕⠑⢕⢕⠵⢕",
  "⢕⢕⢕⢕⠁⢜⠕⢁⣴⣿⡇⢓⢕⢵⢐⢕⢕⠕⢁⣾⢿⣧⠑⢕⢕⠄⢑⢕⠅⢕",
  "⢕⢕⠵⢁⠔⢁⣤⣤⣶⣶⣶⡐⣕⢽⠐⢕⠕⣡⣾⣶⣶⣶⣤⡁⢓⢕⠄⢑⢅⢑",
  "⠍⣧⠄⣶⣾⣿⣿⣿⣿⣿⣿⣷⣔⢕⢄⢡⣾⣿⣿⣿⣿⣿⣿⣿⣦⡑⢕⢤⠱⢐",
  "⢠⢕⠅⣾⣿⠋⢿⣿⣿⣿⠉⣿⣿⣷⣦⣶⣽⣿⣿⠈⣿⣿⣿⣿⠏⢹⣷⣷⡅⢐",
  "⣔⢕⢥⢻⣿⡀⠈⠛⠛⠁⢠⣿⣿⣿⣿⣿⣿⣿⣿⡀⠈⠛⠛⠁⠄⣼⣿⣿⡇⢔",
  "⢕⢕⢽⢸⢟⢟⢖⢖⢤⣶⡟⢻⣿⡿⠻⣿⣿⡟⢀⣿⣦⢤⢤⢔⢞⢿⢿⣿⠁⢕",
  "⢕⢕⠅⣐⢕⢕⢕⢕⢕⣿⣿⡄⠛⢀⣦⠈⠛⢁⣼⣿⢗⢕⢕⢕⢕⢕⢕⡏⣘⢕",
  "⢕⢕⠅⢓⣕⣕⣕⣕⣵⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣷⣕⢕⢕⢕⢕⡵⢀⢕⢕",
  "⢑⢕⠃⡈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⢕⢕⢕",
  "⣆⢕⠄⢱⣄⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢁⢕⢕⠕⢁",
  "⣿⣦⡀⣿⣿⣷⣶⣬⣍⣛⣛⣛⡛⠿⠿⠿⠛⠛⢛⣛⣉⣭⣤⣂⢜⠕⢑⣡⣴⣿",
}


-- vim.api.nvim_set_hl(0, 'StartLogo', {fg='#1C506B', ctermfg=23})
vim.api.nvim_set_hl(0, 'StartLogo1', { fg = "#833ab4"})
vim.api.nvim_set_hl(0, 'StartLogo2', { fg = "#97359c"})
vim.api.nvim_set_hl(0, 'StartLogo3', { fg = "#aa3184"})
vim.api.nvim_set_hl(0, 'StartLogo4', { fg = "#b82e72"})
vim.api.nvim_set_hl(0, 'StartLogo5', { fg = "#c92a5d"})
vim.api.nvim_set_hl(0, 'StartLogo6', { fg = "#da2649"})
vim.api.nvim_set_hl(0, 'StartLogo7', { fg = "#ea2234"})
vim.api.nvim_set_hl(0, 'StartLogo8', { fg = "#fd1d1d"})
vim.api.nvim_set_hl(0, 'StartLogo9', { fg = "#fd2f22"})
vim.api.nvim_set_hl(0, 'StartLogo10', { fg = "#fd4929"})
vim.api.nvim_set_hl(0, 'StartLogo11', { fg = "#fd6330"})
vim.api.nvim_set_hl(0, 'StartLogo12', { fg = "#fd8439"})
vim.api.nvim_set_hl(0, 'StartLogo13', { fg = "#fc9e40"})
vim.api.nvim_set_hl(0, 'StartLogo14', { fg = "#fcb045"})

local function header_color()
  local lines = {}
  for i, line_chars in pairs(header) do
    local hi = "StartLogo" .. i
    local line = {
      type = "text",
      val = line_chars,
      opts = {
        hl = hi,
        shrink_margin = false,
        position = "center",
      },
    }
    table.insert(lines, line)
  end

  local output = {
    type = "group",
    val = lines,
    opts = { position = "center", },
  }

  return output
end

-- dashboard.section.header.val = header_color();

local config = require("alpha.themes.theta").config
config.layout[2] = header_color();
-- alpha.setup(dashboard.opts);
alpha.setup(config);
