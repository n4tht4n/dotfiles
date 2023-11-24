-- See: `:help nvim-treesitter`

require('nvim-treesitter.configs').setup {
  -- Add languages to be installed here that you want installed for treesitter
  ensure_installed = {
    'bash', 'c', 'cpp', 'css', 'dockerfile', 'gitignore', 'go', 'graphql', 'html', 'java', 'javascript', 'json',
    'kotlin', 'lua', 'markdown', 'markdown_inline', 'proto', 'python', 'rust', 'scss', 'sql', 'svelte',
    'todotxt', 'toml', 'tsx', 'typescript', 'vimdoc', 'vim', 'yaml'
  },

  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },
  autotag = { enable = true },
  additional_vim_regex_highlighting = false,

  -- TODO: checkout the following stuff, it's taken from "kickstart", dunno what it's doing ;)
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<c-space>',
      node_incremental = '<c-space>',
      scope_incremental = '<c-s>',
      node_decremental = '<M-space>',
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ['aa'] = '@parameter.outer',
        ['ia'] = '@parameter.inner',
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        [']m'] = '@function.outer',
        [']]'] = '@class.outer',
      },
      goto_next_end = {
        [']M'] = '@function.outer',
        [']['] = '@class.outer',
      },
      goto_previous_start = {
        ['[m'] = '@function.outer',
        ['[['] = '@class.outer',
      },
      goto_previous_end = {
        ['[M'] = '@function.outer',
        ['[]'] = '@class.outer',
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ['<leader>a'] = '@parameter.inner',
      },
      swap_previous = {
        ['<leader>A'] = '@parameter.inner',
      },
    },
  },
}

