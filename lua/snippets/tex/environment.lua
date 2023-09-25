local helpers = require("misc.helpers.luasnip")

return {
  -- GENERIC ENVIRONMENT
  s({ trig = "new", snippetType = "autosnippet" },
    fmta(
      [[
        \begin{<>}
            <>
        \end{<>}
      ]],
      {
        i(1),
        d(2, helpers.get_visual),
        rep(1),
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- ENVIRONMENT WITH ONE EXTRA ARGUMENT
  s({ trig = "n1", snippetType = "autosnippet" },
    fmta(
      [[
        \begin{<>}{<>}
            <>
        \end{<>}
      ]],
      {
        i(1),
        i(2),
        d(3, helpers.get_visual),
        rep(1),
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- ENVIRONMENT WITH TWO EXTRA ARGUMENTS
  s({ trig = "n2", snippetType = "autosnippet" },
    fmta(
      [[
        \begin{<>}{<>}{<>}
            <>
        \end{<>}
      ]],
      {
        i(1),
        i(2),
        i(3),
        d(4, helpers.get_visual),
        rep(1),
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- TOPIC ENVIRONMENT (ejmastnak's custom tcbtheorem environment)
  -- s({ trig = "nt", snippetType = "autosnippet" },
  --   fmta(
  --     [[
  --       \begin{topic}{<>}{<>}
  --           <>
  --       \end{topic}
  --     ]],
  --     {
  --       i(1),
  --       i(2),
  --       d(3, helpers.get_visual),
  --     }
  --   ),
  --   { condition = helpers.line_begin }
  -- ),
  -- EQUATION
  s({ trig = "nn", snippetType = "autosnippet" },
    fmta(
      [[
        \begin{equation*}
            <>
        \end{equation*}
      ]],
      {
        i(1),
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- SPLIT EQUATION
  s({ trig = "ss", snippetType = "autosnippet" },
    fmta(
      [[
        \begin{equation*}
            \begin{split}
                <>
            \end{split}
        \end{equation*}
      ]],
      {
        d(1, helpers.get_visual),
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- ALIGN
  s({ trig = "al", snippetType = "autosnippet" },
    fmta(
      [[
        \begin{align*}
            <>
        \end{align*}
      ]],
      {
        i(1),
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- ITEMIZE
  s({ trig = "itt", snippetType = "autosnippet" },
    fmta(
      [[
        \begin{itemize}
            \item <>
        \end{itemize}
      ]],
      {
        i(0),
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- ENUMERATE
  s({ trig = "enn", snippetType = "autosnippet" },
    fmta(
      [[
        \begin{enumerate}
            \item <>
        \end{enumerate}
      ]],
      {
        i(0),
      }
    )
  ),
  -- INLINE MATH
  s({ trig = "([^%l])mm", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta(
      "<>$<>$",
      {
        f(function(_, snip) return snip.captures[1] end),
        d(1, helpers.get_visual),
      }
    )
  ),
  -- INLINE MATH ON NEW LINE
  s({ trig = "^mm", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta(
      "$<>$",
      {
        d(1, helpers.get_visual),
      })),
  -- FIGURE
  s({ trig = "fig" },
    fmta(
      [[
        \begin{figure}[htb!]
          \centering
          \includegraphics[width=<>\linewidth]{<>}
          \caption{<>}
          \label{fig:<>}
        \end{figure}
        ]],
      { i(1, "0.8"),
        i(2),
        i(3),
        i(4),
      }
    ),
    { condition = helpers.line_begin }
  ),
}
