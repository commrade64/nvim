-- Global configuration of VimTex's settings

-- Turn off VimTex indentation
vim.g.vimtex_indent_enabled = 0

-- Disable default mapping; i'll define my own
vim.g.vimtex_mappings_enabled = 0

-- Disable insert mode mappings (in favor of LuaSnip)
vim.g.vimtex_imaps_enabled = 0

-- Define what syntax should be concealed
vim.g.vimtex_syntax_conceal = {
  accents = 1,
  ligatures = 1,
  cites = 1,
  fancy = 1,
  spacing = 1,
  greek = 1,
  math_bounds = 1,
  math_delimiters = 1,
  math_fracs = 1,
  math_super_sub = 1,
  math_symbols = 1,
  sections = 1,
  styles = 1,
}

-- Make this option twice as small to prevent lags
vim.g.vimtex_delim_stopline = 250

-- Delimeter configuration
vim.g.vimtex_delim_toggle_mod_list = {
  { '\\left', '\\right' },
  { '\\big', '\\big' },
}
