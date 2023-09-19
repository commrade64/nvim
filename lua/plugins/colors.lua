-- gruvbox setup
local status, gruvbox = pcall(require, "gruvbox")
if not status then
  print("gruvbox is not installed")
  return
end

gruvbox.setup({
  undercurl = true,
  underline = true,
  bold = false,
  italic = {
    strings = false,
    comments = true,
    operators = false,
    folds = false,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true,    -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

-- catppuccin setup
local status, catppuccin = pcall(require, "catppuccin")
if not status then
  print("catppuccin is not installed")
  return
end

local colors = require("catppuccin.palettes").get_palette() -- fetch colors from palette

catppuccin.setup({
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  background = { -- :h background
      light = "latte",
      dark = "mocha",
  },
  transparent_background = false,
  compile = {
    enabled = true,
    path = vim.fn.stdpath "cache" .. "/catppuccin"
  },
  integrations = {
    cmp = true,
    leap = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
  },
  styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" }, -- Change the style of comments
    conditionals = {},
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
  color_overrides = {
    -- mocha = {
    --   base = "#000000",
    --   mantle = "#000000",
    --   crust = "#000000",
    -- },
    -- macchiato = {
    --   base = "#000000",
    --   mantle = "#000000",
    --   crust = "#000000",
    -- },
    -- frappe = {
    --   base = "#000000",
    --   mantle = "#000000",
    --   crust = "#000000",
    -- },
  },
  custom_highlights = {
    Comment = { fg = colors.surface2 }, -- just comments
    Constant = { fg = colors.peach }, -- (preferred) any constant
    String = { fg = colors.yellow }, -- a string constant: "this is a string"
    Character = { fg = colors.teal }, --  a character constant: 'c', '\n'
    Number = { fg = colors.maroon }, --   a number constant: 234, 0xff
    Float = { fg = colors.maroon }, --    a floating point constant: 2.3e10
    Boolean = { fg = colors.maroon }, --  a boolean constant: TRUE, false
    Identifier = { fg = colors.text }, -- (preferred) any variable name
    Function = { fg = colors.green }, -- function name (also: methods for classes)
    Statement = { fg = colors.mauve }, -- (preferred) any statement
    Conditional = { fg = colors.red }, --  if, then, else, endif, switch, etcp.
    Repeat = { fg = colors.red }, --   for, do, while, etcp.
    Label = { fg = colors.peach }, --    case, default, etcp.
    Operator = { fg = colors.text }, -- "sizeof", "+", "*", etcp.
    Keyword = { fg = colors.pink }, --  any other keyword
    PreProc = { fg = colors.peach }, -- (preferred) generic Preprocessor
    Include = { fg = colors.green }, --  preprocessor #include
    StorageClass = { fg = colors.yellow }, -- static, register, volatile, etcp.
    Structure = { fg = colors.yellow }, --  struct, union, enum, etcp.
    Typedef = { fg = colors.yellow }, --  A typedef
    Special = { fg = colors.peach }, -- (preferred) any special symbol
    Type = { fg = colors.teal }, -- (preferred) int, long, char, etcp.
    TSInclude = { fg = colors.peach },
    ["@include"] = { fg = colors.peach },
    TSField = { fg = colors.blue }, -- For fields.
    ["@field"] = { fg = colors.blue }, -- For fields.
    TSProperty = { fg = colors.blue }, -- Same as TSField.
    ["@property"] = { fg = colors.blue }, -- Same as TSField.
    TSConstant = { fg = colors.maroon }, -- For constants
    ["@constant.builtin"] = { fg = colors.maroon }, -- For constants
    TSParameter = { fg = colors.text }, -- For parameters of a function.
    ["@parameter"] = { fg = colors.text }, -- For parameters of a function.
    TSOperator = { fg = colors.text },
    ["@operator"] = { fg = colors.text },
    TSKeywordFunction = { fg = colors.peach }, -- For keywords used to define a fuction.
    ["@keyword.function"] = { fg = colors.peach }, -- For keywords used to define a fuction.
    TSKeyword = { fg = colors.peach }, -- For keywords that don't fall in previous categories.
    ["@keyword"] = { fg = colors.peach }, -- For keywords that don't fall in previous categories.
    TSKeywordReturn = { fg = colors.peach },
    ["@keyword.return"] = { fg = colors.peach },
    TSType = { fg = colors.teal }, -- For types.
    ["@type"] = { fg = colors.teal }, -- For types.
    TSTypeBuiltin = { fg = colors.teal }, -- For builtin types.
    ["@type.builtin"] = { fg = colors.teal }, -- For builtin types.
    TSVariableBuiltin = { fg = colors.red }, -- Variable names that are defined by the languages, like this or self.
    ["@variable.builtin"] = { fg = colors.red }, -- Variable names that are defined by the languages, like this or self.
    TSFunction = { fg = colors.green }, -- For function (calls and definitions).
    ["@function.builtin"] = { fg = colors.green }, -- For function (calls and definitions).
    TSMethod = { fg = colors.green }, -- For method calls and definitions.
    ["@function"] = { fg = colors.green }, -- For method calls and definitions.
    TSString = { fg = colors.yellow }, -- For strings.
    ["@string"] = { fg = colors.yellow }, -- For strings.
    BufferLineSeparator = { fg = colors.peach, bg = "NONE" },
    BufferLineBufferVisible = { fg = colors.surface1, bg = "NONE" },
    BufferLineBufferSelected = { fg = colors.text, bg = "NONE" }, -- current
    BufferLineIndicatorSelected = { fg = colors.peach, bg = "NONE" },
  },
})

function ColorMyPencils(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)
end

ColorMyPencils("catppuccin")
