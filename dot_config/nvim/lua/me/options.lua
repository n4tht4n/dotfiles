-- `:help vim.o`

-- files, swaps & backups
vim.o.backup = false
vim.o.swapfile = false
vim.o.fileencoding = 'utf-8'

-- undo/redo
vim.o.undofile = true
vim.o.undolevels = 1000
vim.o.undoreload = 1000

-- line numbers
vim.o.number = true
vim.o.relativenumber = true

-- tabs & indentation
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

vim.o.expandtab = true
vim.o.smarttab = true
vim.o.smartindent = true
vim.o.autoindent = true

-- line wrapping
vim.o.wrap = false

-- search settings
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- line/col highlights
vim.o.cursorline = true
vim.o.colorcolumn = '120'

-- appearance
vim.o.termguicolors = true
vim.o.background = 'dark'
vim.o.signcolumn = 'yes'    -- show fixed sign column in the gutter

-- clipboard
vim.opt.clipboard:append('unnamedplus')

-- split windows
vim.o.splitright = true
vim.o.splitbelow = true

-- misc
vim.o.scrolloff = 10
vim.o.backspace = 'indent,eol,start'
vim.o.updatetime = 50
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.opt.iskeyword:append('-') -- with this, hyphenated words are treated as one single world (e.g. for `dw`)
-- vim.o.conceallevel = 3

-- folding
vim.o.foldmethod = 'indent'
vim.o.foldenable = false
vim.o.foldlevelstart = 99

-- TODO: further exploration (from kickstart project)
vim.o.mouse = 'a'
vim.o.breakindent = true
vim.o.completeopt = 'menuone,noselect'
