local wezterm = require 'wezterm'

-- see: https://github.com/Tony-Sol/.config/blob/master/wezterm/wezterm.lua

return {
  term = 'wezterm',
  -- default_prog  = { "/bin/zsh", "-l", "-c", "tmux attach || tmux" },
  color_scheme = 'Dracula (Official)',
  unicode_version = 14,
  font = wezterm.font_with_fallback {
    {
      family = "Fira Code",
      weight = "Regular",
      harfbuzz_features = {
        -- enable ligatures stuff
        "calt=1",
        "clig=1",
        "liga=1",
        -- stylistic sets: https://github.com/tonsky/FiraCode/wiki/How-to-enable-stylistic-sets
        'cv32', -- .=
        'cv28', -- special . with curly braces
        'ss06', -- \\
        'ss07', -- =~ !~
        'ss10', -- Fl Tl fi fj fl ft
        'ss09', -- >>= <<= ||= |=
      },
     assume_emoji_presentation = false,
    },
    {
      family = "Hack Nerd Font Mono",
      weight = "Regular",
      harfbuzz_features = { "calt=1", "clig=1", "liga=1" },
      assume_emoji_presentation = true,
    },
  },
  font_size = 20.0,
  initial_cols = 150,
  initial_rows = 42,
  --window_padding = { left = 0, right = 0, top = 0, bottom = 0 },
  scrollback_lines = 100000,
  native_macos_fullscreen_mode = true,
  hide_tab_bar_if_only_one_tab = true,

  window_background_opacity = 0.95,
  window_decorations = "RESIZE",
}
