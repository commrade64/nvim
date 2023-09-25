-- gruvbox setup
local status, gruvbox = pcall(require, "gruvbox")
if not status then
  print("gruvbox is not installed")
  return
end

gruvbox.setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = false,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {
    dark0_hard = "#0c0c0c",
    dark0 = "#0c0c0c",
    dark0_soft = "#0c0c0c",
    dark1 = "#282827",
    dark2 = "#3a3837",
    dark3 = "#514d49",
  },
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

vim.cmd.colorscheme("gruvbox")
