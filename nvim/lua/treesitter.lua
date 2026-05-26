local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.liquid = {
  install_info = {
    url = "~/umg/tree-sitter-liquid", -- local path or git repo
    files = {"src/parser.c"}, -- note that some parsers also require src/scanner.c or src/scanner.cc
    -- optional entries:
    branch = "main", -- default branch in case of git repo if different from master
    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
  },
  filetype = "liquid", -- if filetype does not match the parser name
}

require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = { "bash", "cmake", "comment", "cpp", "css", "diff", "dockerfile", "git_rebase", "gitattributes", "gitcommit", "glsl", "graphql", "html", "javascript", "json", "lua", "markdown", "markdown_inline", "python", "regex", "rust", "scss", "tsx", "typescript", "vim", "vimdoc", "yaml" },

  -- Install languages synchronously when headless (only applied to `ensure_installed`)
  sync_install = #vim.api.nvim_list_uis() == 0,

  -- List of parsers to ignore installing
  -- ignore_install = { "javascript" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
