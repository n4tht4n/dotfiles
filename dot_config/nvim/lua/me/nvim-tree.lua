vim.cmd([[highlight NvimTreeIndentMarker guifg=#3FC5FF]])

require('nvim-tree').setup({
  actions = {
    open_file = {
      window_picker = { enable = false }
    },
  },
--  sort_by = 'case-sensitive',
  sort = { sorter = 'case_sensitive' },
  filters = { custom = { '^.git$' } },
  view = {
    width = 42,
    side = 'right',
  },
  renderer = { highlight_opened_files = 'all' },
  update_focused_file = {
    enable = true,
    update_root = false,
  }
})

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree file browser' })
