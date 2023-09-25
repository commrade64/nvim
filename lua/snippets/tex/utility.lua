local helpers = require("misc.helpers.luasnip")

return {
  -- REFERENCE
  s({ trig = "rr", snippetType = "autosnippet", wordTrig = false },
    fmta(
      [[\ref{<>}]],
      {
        d(1, helpers.get_visual),
      }
    )
  ),
  -- DOCUMENTCLASS
  s({ trig = "dcc", snippetType = "autosnippet" },
    fmta(
      [=[\documentclass[<>]{<>}]=],
      {
        i(1, "a4paper"),
        i(2, "article"),
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- USE A LATEX PACKAGE
  s({ trig = "pack", snippetType = "autosnippet" },
    fmta(
      [[\usepackage[<>]{<>}]],
      {
        i(1),
        d(2, helpers.get_visual),
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- INPUT a LaTeX file (TODO: adjust for yourself)
  -- s({ trig = "inn", snippetType = "autosnippet" },
  --   fmta(
  --     [[\input{<><>}]],
  --     {
  --       i(1, "~/dotfiles/config/latex/templates/"),
  --       i(2)
  --     }
  --   ),
  --   { condition = helpers.line_begin }
  -- ),
  -- LABEL
  s({ trig = "lbl", snippetType = "autosnippet" },
    fmta(
      [[\label{<>}]],
      {
        d(1, helpers.get_visual),
      }
    )
  ),
  -- HPHANTOM (I don't need it yet)
  -- s({ trig = "hpp", snippetType = "autosnippet" },
  --   fmta(
  --     [[
  --       \hphantom{<>}
  --     ]],
  --     {
  --       d(1, helpers.get_visual),
  --     }
  --   )
  -- ),
  s({ trig = "TODOO", snippetType = "autosnippet" },
    fmta(
      [[\TODO{<>}]],
      {
        d(1, helpers.get_visual),
      }
    )
  ),
  s({ trig = "nc" },
    fmta(
      [[\newcommand{<>}{<>}]],
      {
        i(1),
        i(2)
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- s({ trig = "sii", snippetType = "autosnippet" },
  --   fmta(
  --     [[\si{<>}]],
  --     {
  --       i(1),
  --     }
  --   )
  -- ),
  -- s({ trig = "SI" },
  --   fmta(
  --     [[\SI{<>}{<>}]],
  --     {
  --       i(1),
  --       i(2)
  --     }
  --   )
  -- ),
  -- URL
  s({ trig = "url" },
    fmta(
      [[\url{<>}]],
      {
        d(1, helpers.get_visual),
      }
    )
  ),
  -- href command with URL in visual selection
  s({ trig = "LU", snippetType = "autosnippet" },
    fmta(
      [[\href{<>}{<>}]],
      {
        d(1, helpers.get_visual),
        i(2)
      }
    )
  ),
  -- href command with text in visual selection
  s({ trig = "LL", snippetType = "autosnippet" },
    fmta(
      [[\href{<>}{<>}]],
      {
        i(1),
        d(2, helpers.get_visual)
      }
    )
  ),
  -- HSPACE
  s({ trig = "hss", snippetType = "autosnippet" },
    fmta(
      [[\hspace{<>}]],
      {
        d(1, helpers.get_visual),
      }
    )
  ),
  -- VSPACE
  s({ trig = "vss", snippetType = "autosnippet" },
    fmta(
      [[\vspace{<>}]],
      {
        d(1, helpers.get_visual),
      }
    )
  ),
  -- SECTION
  s({ trig = "h1", snippetType = "autosnippet" },
    fmta(
      [[\section{<>}]],
      {
        d(1, helpers.get_visual),
      }
    )
  ),
  -- SUBSECTION
  s({ trig = "h2", snippetType = "autosnippet" },
    fmta(
      [[\subsection{<>}]],
      {
        d(1, helpers.get_visual),
      }
    )
  ),
  -- SUBSUBSECTION
  s({ trig = "h3", snippetType = "autosnippet" },
    fmta(
      [[\subsubsection{<>}]],
      {
        d(1, helpers.get_visual),
      }
    )
  ),
}
