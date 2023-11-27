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

  -- git stuff
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        -- add = { text = '+' },
        -- change = { text = '~' },
        -- delete = { text = '_' },
        -- topdelete = { text = '‾' },
        -- changedelete = { text = '~' },
        -- the following icons are too much!?
        add = { text = ' ' },
        change = { text = ' ' },
        delete = { text = ' ' },
        untracked = { text = ' ' },
      },
    }
  },

  -- show indentation scope
  {
    'echasnovski/mini.indentscope',
    version = '*',
    opts = {
      try_as_border = true
    }
  },

  -- easy commenting
  {
    'echasnovski/mini.comment',
    version = '*',
    opts = {}
  },

  -- pattern highlighting
  {
    'echasnovski/mini.hipatterns',
    version = '*',
    config = function()
      local hipatterns = require('mini.hipatterns')
      hipatterns.setup({
        highlighters = {
          -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
          fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
          hack  = { pattern = '%f[%w]()HACK()%f[%W]',  group = 'MiniHipatternsHack'  },
          todo  = { pattern = '%f[%w]()TODO()%f[%W]',  group = 'MiniHipatternsTodo'  },
          note  = { pattern = '%f[%w]()NOTE()%f[%W]',  group = 'MiniHipatternsNote'  },
          -- Highlight hex color strings (`#rrggbb`) using that color, e.g. "#ff0000"
          hex_color = hipatterns.gen_highlighter.hex_color(),
        }
      })
    end
  },

  -- autopairs
  {
    'echasnovski/mini.pairs',
    version = '*',
    opts = {}
  },

  -- surround actions
  {
    'echasnovski/mini.surround',
    version = '*',
    opts = {}
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
