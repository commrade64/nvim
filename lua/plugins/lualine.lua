local status, lualine = pcall(require, "lualine")
if not status then
  print("lualine is not installed")
  return
end

local custom_gruvbox = require("lualine.themes.gruvbox_dark")

local colors = {
  black        = '#141414', -- #282828
  white        = '#ebdbb2',
  red          = '#fb4934',
  green        = '#b8bb26',
  blue         = '#83a598',
  yellow       = '#fe8019',
  gray         = '#938674', -- #a89984
  darkgray     = '#282828', -- #3c3836
  lightgray    = '#3a3532', -- #504945
  inactivegray = '#685d54', -- #7c6f64
}

custom_gruvbox = {
  normal = {
    a = { bg = colors.gray, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.darkgray, fg = colors.gray }
  },
  insert = {
    a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.lightgray, fg = colors.white }
  },
  visual = {
    a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.inactivegray, fg = colors.black }
  },
  replace = {
    a = { bg = colors.red, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.black, fg = colors.white }
  },
  command = {
    a = { bg = colors.green, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.inactivegray, fg = colors.black }
  },
  inactive = {
    a = { bg = colors.darkgray, fg = colors.gray, gui = 'bold' },
    b = { bg = colors.darkgray, fg = colors.gray },
    c = { bg = colors.darkgray, fg = colors.gray }
  }
}

lualine.setup {
  options = {
    icons_enabled = false,
    theme = custom_gruvbox,
    component_separators = '|',
    section_separators = '',
  },
}
