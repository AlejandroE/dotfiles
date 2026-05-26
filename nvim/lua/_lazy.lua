local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd [[colorscheme catppuccin]]
    end,
  },
  {
    'itchyny/lightline.vim',
    dependencies = { 'catppuccin/nvim' },
    config = function()
      vim.g.lightline = {
        colorscheme = 'catppuccin',
        active = {
          left = {
            { 'mode', 'paste' },
            { 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' },
          },
        },
      }
    end,
  },
  'pauchiner/pastelnight.nvim',
  'projekt0n/github-nvim-theme',
  'tanvirtin/monokai.nvim',
  'yonlu/omni.vim',
  'matsuuu/pinkmare',
  'Mofiqul/dracula.nvim',
  'EdenEast/nightfox.nvim',
  'glepnir/zephyr-nvim',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'ckipp01/stylua-nvim',
  {
    'stevearc/oil.nvim',
    -- opts = { default_file_explorer = false, },
    -- Optional dependencies
    -- dependencies = { "nvim-tree/nvim-web-devicons" },
    dependencies = { 'kyazdani42/nvim-web-devicons' },
  },
  {
    'dstein64/vim-startuptime',
    -- lazy-load on a command
    cmd = 'StartupTime',
    -- init is called during startup. Configuration for vim plugins typically should be set in an init function
    init = function()
      vim.g.startuptime_tries = 10
    end,
  },

  'neovim/nvim-lspconfig',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',

  'hrsh7th/cmp-vsnip',
  'hrsh7th/vim-vsnip',
  'hrsh7th/vim-vsnip-integ',

  'kyazdani42/nvim-web-devicons',
  'folke/trouble.nvim',

  'nvim-lua/plenary.nvim',
  {
    'telescope.nvim',
    dependencies = {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      config = function()
        require('telescope').load_extension 'fzf'
      end,
    },
  },
  'stevearc/dressing.nvim',

  'nvim-treesitter/nvim-treesitter',

  'nvimtools/none-ls.nvim',
  'jose-elias-alvarez/nvim-lsp-ts-utils',

  'AckslD/nvim-neoclip.lua',

  {
    'pwntester/octo.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'kyazdani42/nvim-web-devicons',
    },
  },

  'goolord/alpha-nvim',

  'numToStr/Comment.nvim',

  'tpope/vim-sensible',
  'tpope/vim-fugitive',
  'tpope/vim-eunuch',
  'mileszs/ack.vim',
  -- 'junegunn/fzf', { 'do': { -> fzf#install() } }
  'junegunn/fzf.vim',
  'hashivim/vim-terraform',

  'vim-test/vim-test',

  'coddingtonbear/neomake-platformio',
  'tikhomirov/vim-glsl',
  'jparise/vim-graphql',
}

require('lazy').setup(plugins)
