---@diagnostic disable: unused-local

-- Abbreviations for convenience (taken from LuaSnip docs)
local status, ls = pcall(require, "luasnip")
if not status then
  print("luasnip is not installed")
  return
end

local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

ls.config.set_config({
  history = false, -- don't store snippet history or less overhead
  enable_autosnippets = true,
  store_selection_keys = "<Tab>", -- use <Tab> to trigger visual selection
  update_events = "TextChanged,TextChangedI",
})

-- require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets" })
