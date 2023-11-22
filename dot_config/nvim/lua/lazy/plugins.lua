require('lazy').setup({
  -- highlight, edit, and navigate code
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
    build = ':TSUpdate',
  },

  -- fuzzy finder for files, lists, etc.
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end
  },

  -- file browsing
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },

  -- statusbar
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
  },

  -- help popup
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {}
  },

  -- colorcheme
  { 'folke/tokyonight.nvim' },
}, {})
