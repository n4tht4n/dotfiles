-- See: `:help lualine`

-- Color for highlights
local colors = {
  yellow = '#ECBE7B',
  cyan = '#008080',
  darkblue = '#081633',
  green = '#98be65',
  orange = '#FF8800',
  violet = '#a9a1e1',
  magenta = '#c678dd',
  blue = '#51afef',
  red = '#ec5f67',
}

require('lualine').setup {
  options = {
    globalstatus = true,
    theme = 'tokyonight',
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {
      'branch',
      { 'diff',
        symbols = {
          added = " ",
          modified = " ",
          removed = " ",
        }
      }
    },
    lualine_c = {
      { 'diagnostics',
        symbols = {
          error = ' ',
          warn = ' ',
          info = ' ',
          hint = ' ',
        },
      },
      { 'filetype', icon_only = true, separator = '', padding = { left = 1, right = 0 } },
      { 'filename', path = 1, symbols = { modified = ' ', readonly = '[ro]', unnamed = '' } },
      { 'filesize' },
      { 'searchcount', maxcount = 999, timeout = 500 },
    },
    lualine_x = {
      { 'lsp_progress',
        colors = {
          percentage = colors.cyan,
          title = colors.cyan,
          message = colors.cyan,
          spinner = colors.cyan,
          lsp_client_name = colors.magenta,
          use = true,
        },
        separators = {
          component = ' ',
          progress = ' | ',
          message = { pre = '(', post = ')' },
          percentage = { pre = '', post = '%% ' },
          title = { pre = '', post = ': ' },
          lsp_client_name = { pre = '[', post = ']' },
          spinner = { pre = '', post = '' },
        },
        hide = { 'null-ls', 'pyright' },
        only_show_attached = true,
        display_components = { 'lsp_client_name', 'spinner', { 'title', 'percentage', 'message' } },
        timer = {
          progress_enddelay = 500,
          spinner = 1000,
          lsp_client_name_enddelay = 1000,
          attached_delay = 3000,
        },
        spinner_symbols = { '🌑 ', '🌒 ', '🌓 ', '🌔 ', '🌕 ', '🌖 ', '🌗 ', '🌘 ' },
        message = { initializing = 'Initializing…', commenced = 'In Progress', completed = 'Completed' },
        max_message_length = 30,
      }
    },
    lualine_y = {
      { 'encoding' },
      { 'fileformat' },
      { 'selectioncount' },
      { 'progress', separator = ' ', padding = { left = 1, right = 0 } },
      { 'location', padding = { left = 0, right = 1 } },
    },
    lualine_z = {
      function()
        return '  ' .. os.date('%R')
      end,
    },
  },
  tabline = {
    lualine_a = {'buffers'},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  }
}

