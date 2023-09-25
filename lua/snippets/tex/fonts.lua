local helpers = require("misc.helpers.luasnip")

return {
  -- TYPEWRITER i.e. \texttt
  s({ trig = "([^%a])tt", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 2000 },
    fmta(
      "<>\\texttt{<>}",
      {
        f(function(_, snip) return snip.captures[1] end),
        d(1, helpers.get_visual),
      }
    ),
    { condition = helpers.tex.in_text }
  ),
  -- TYPEWRITER (new line)
  s({ trig = "tt", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 2000 },
    fmta(
      "\\texttt{<>}",
      {
        d(1, helpers.get_visual),
      }
    ),
    { condition = helpers.line_begin_or_non_letter }
  ),
  -- REGULAR TEXT i.e. \text (in math environments)
  s({ trig = "([^%a])tee", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta(
      "<>\\text{<>}",
      {
        f(function(_, snip) return snip.captures[1] end),
        d(1, helpers.get_visual),
      }
    ),
    { condition = helpers.tex.in_mathzone }
  ),
  -- ITALIC i.e. \textit
  s({ trig = "([^%a])tii", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta(
      "<>\\textit{<>}",
      {
        f(function(_, snip) return snip.captures[1] end),
        d(1, helpers.get_visual),
      }
    )
  ),
  -- ITALIC (new line)
  s({ trig = "tii", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta(
      "\\textit{<>}",
      {
        d(1, helpers.get_visual),
      }
    ),
    { condition = helpers.line_begin_or_non_letter }
  ),
  -- BOLD i.e. \textbf
  s({ trig = "([^%a])tbb", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta(
      "<>\\textbf{<>}",
      {
        f(function(_, snip) return snip.captures[1] end),
        d(1, helpers.get_visual),
      }
    )
  ),
  -- BOLD (new line)
  s({ trig = "tbb", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta(
      "\\textbf{<>}",
      {
        d(1, helpers.get_visual),
      }
    ),
    { condition = helpers.line_begin_or_non_letter }
  ),
  -- MATH ROMAN i.e. \mathrm
  s({ trig = "([^%a])mrm", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta(
      "<>\\mathrm{<>}",
      {
        f(function(_, snip) return snip.captures[1] end),
        d(1, helpers.get_visual),
      }
    )
  ),
  -- MATH ROMAN (new line)
  s({ trig = "mrm", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta(
      "\\mathrm{<>}",
      {
        d(1, helpers.get_visual),
      }
    ),
    { condition = helpers.line_begin_or_non_letter }
  ),
  -- MATH CALIGRAPHY i.e. \mathcal
  s({ trig = "([^%a])mcl", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta(
      "<>\\mathcal{<>}",
      {
        f(function(_, snip) return snip.captures[1] end),
        d(1, helpers.get_visual),
      }
    )
  ),
  -- MATH CALIGRAPHY (new line)
  s({ trig = "mcl", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta(
      "\\mathcal{<>}",
      {
        d(1, helpers.get_visual),
      }
    ),
    { condition = helpers.line_begin_or_non_letter }
  ),
  -- MATH BOLDFACE i.e. \mathbf
  s({ trig = "([^%a])mbf", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta(
      "<>\\mathbf{<>}",
      {
        f(function(_, snip) return snip.captures[1] end),
        d(1, helpers.get_visual),
      }
    )
  ),
  -- MATH BOLDFACE (new line)
  s({ trig = "mbf", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta(
      "\\mathbf{<>}",
      {
        d(1, helpers.get_visual),
      }
    ),
    { condition = helpers.line_begin_or_non_letter }
  ),
  -- MATH BLACKBOARD i.e. \mathbb
  s({ trig = "([^%a])mbb", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta(
      "<>\\mathbb{<>}",
      {
        f(function(_, snip) return snip.captures[1] end),
        d(1, helpers.get_visual),
      }
    )
  ),
  -- MATH BLACKBOARD (new line)
  s({ trig = "mbb", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta(
      "\\mathbb{<>}",
      {
        d(1, helpers.get_visual),
      }
    ),
    { condition = helpers.line_begin_or_non_letter }
  ),
}
