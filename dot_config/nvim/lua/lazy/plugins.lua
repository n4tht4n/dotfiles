require('lazy').setup({
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
