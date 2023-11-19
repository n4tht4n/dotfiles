local keymap = vim.keymap.set   -- easier access along the lines...

-- hint for the different modes that could be used as the 1st param
--  normal mode:        'n'
--  insert mode:        'i'
--  visual mode:        'v'
--  visual block mode:  'x'
--  term mode:          't'
--  command mode:       'c'

-- REMAPPING LEADER KEY (must happen before plugins are required, otherwise wrong leader could be used)
keymap({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- some general key mappings
keymap('i', 'jk',           '<ESC>',          { desc = 'Leave insert mode with fast `jk` typing' })
keymap('n', '<leader>nh',   ':nohl<CR>',      { desc = 'Clear search highlight' })
keymap('n', 'x',            '"_x"',           { desc = 'Do not copy deleted single chars into any register' })

-- window split management
keymap('n', '<leader>sv',   '<C-w>v',         { desc = 'Split window vertically' })
keymap('n', '<leader>sh',   '<C-w>s',         { desc = 'Split window horizontally' })
keymap('n', '<leader>se',   '<C-w>=',         { desc = 'Make split windows equal size' })
keymap('n', '<leader>sx',   ':close<CR>',     { desc = 'Close current split window' })

-- tab management
keymap('n', '<leader>to',   ':tabnew<CR>',    { desc = 'Open [n]ew tab' })
keymap('n', '<leader>tx',   ':tabclose<CR>',  { desc = 'Close current tab' })
keymap('n', '<leader>tn',   ':tabn<CR>',      { desc = 'Go to [n]ext tab' })
keymap('n', '<leader>tp',   ':tabp<CR>',      { desc = 'Go to [p]revious tab' })
