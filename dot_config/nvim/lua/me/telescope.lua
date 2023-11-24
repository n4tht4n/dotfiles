local actions = require('telescope.actions')
require ('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ['<C-k>'] = actions.move_selection_previous,  -- move to prev result
        ['<C-j>'] = actions.move_selection_next,      -- move to next result
      }
    },
    layout_strategy = 'vertical',
    layout_config = {
      height = 0.95,
      width = 0.95
    },
  }
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files,           { desc = 'find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep,            { desc = 'find with live grep' })
vim.keymap.set('n', '<leader>fc', builtin.grep_string,          { desc = 'find currently hovered string with grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers,              { desc = 'find buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags,            { desc = 'find in help' })
vim.keymap.set('n', '<leader>fd', builtin.diagnostics,          { desc = 'find in diagnostics' })
vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, { desc = 'document symbols' })

-- enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
