-- General snippets, applicable with any filetype
local helpers = require("misc.helpers.luasnip")

return {
  -- Paired parentheses
  s({ trig = "(", wordTrig = false, snippetType = "autosnippet" },
    {
      t("("),
      d(1, helpers.get_visual),
      t(")"),
    }),
  -- Paired curly braces
  s({ trig = "{", wordTrig = false, snippetType = "autosnippet" },
    {
      t("{"),
      d(1, helpers.get_visual),
      t("}"),
    }),
  -- Paired square brackets
  s({ trig = "[", wordTrig = false, snippetType = "autosnippet" },
    {
      t("["),
      d(1, helpers.get_visual),
      t("]"),
    }),
  -- Paired back ticks
  s({ trig = "sd", snippetType = "autosnippet" },
    {
      f(function(_, snip) return snip.captures[1] end),
      t("`"),
      d(1, helpers.get_visual),
      t("`"),
    }),
  -- Paired double quotes
  s({ trig = '"', wordTrig = false, snippetType = "autosnippet", priority = 2000 },
    fmta(
      '"<>"',
      {
        d(1, helpers.get_visual),
      }
    ),
    { condition = helpers.line_begin_or_non_letter }
  ),
  -- Paired single quotes
  s({ trig = "'", wordTrig = false, snippetType = "autosnippet", priority = 2000 },
    fmta(
      "'<>'",
      {
        d(1, helpers.get_visual),
      }
    ),
    { condition = helpers.line_begin_or_non_letter }
  ),
  -- Today's date in YYYY-MM-DD (ISO 8601) format
  -- s({ trig = "iso" },
  --   { f(get_date) }
  -- -- {f(get_ISO_8601_date)}
  -- ),
  -- Curly braces
  s({ trig = "df", snippetType = "autosnippet" },
    fmta(
      [[
        {
          <>
        }
      ]],
      { d(1, helpers.get_visual) }
    )
  ),
  -- Square braces
  s({ trig = "dg", snippetType = "autosnippet" },
    fmta(
      [[
        [
          <>
        ]
      ]],
      { d(1, helpers.get_visual) }
    )
  ),
  -- em dash
  s({ trig = "--", wordTrig = false },
    { t("—") }
  ),
  -- Lorem ipsum
  s({ trig = "lipsum" },
    fmta(
      [[
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
      ]],
      {}
    )
  ),
}
