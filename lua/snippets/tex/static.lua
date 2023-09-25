local helpers = require("misc.helpers.luasnip")

return {
  s({ trig = "q" },
    {
      t("\\quad "),
    }
  ),
  s({ trig = "qq", snippetType = "autosnippet" },
    {
      t("\\qquad "),
    }
  ),
  s({ trig = "npp", snippetType = "autosnippet" },
    {
      t({ "\\newpage", "" }),
    },
    { condition = helpers.line_begin }
  ),
  s({ trig = "which", snippetType = "autosnippet" },
    {
      t("\\text{ for which } "),
    },
    { condition = helpers.tex.in_mathzone }
  ),
  s({ trig = "all", snippetType = "autosnippet" },
    {
      t("\\text{ for all } "),
    },
    { condition = helpers.tex.in_mathzone }
  ),
  s({ trig = "and", snippetType = "autosnippet" },
    {
      t("\\quad \\text{and} \\quad"),
    },
    { condition = helpers.tex.in_mathzone }
  ),
  s({ trig = "forall", snippetType = "autosnippet" },
    {
      t("\\text{ for all } "),
    },
    { condition = helpers.tex.in_mathzone }
  ),
  s({ trig = "toc", snippetType = "autosnippet" },
    {
      t("\\tableofcontents"),
    },
    { condition = helpers.line_begin }
  ),
  s({ trig = "inff", snippetType = "autosnippet" },
    {
      t("\\infty"),
    }
  ),
  s({ trig = "ii", snippetType = "autosnippet" },
    {
      t("\\item "),
    },
    { condition = helpers.line_begin }
  ),
  s({ trig = "---", snippetType = "autosnippet" },
    { t('% --------------------------------------------- %') },
    { condition = helpers.line_begin }
  ),
  -- HLINE WITH EXTRA VERTICAL SPACE
  s({ trig = "hl" },
    { t('\\hline {\\rule{0pt}{2.5ex}} \\hspace{-7pt}') },
    { condition = helpers.line_begin }
  ),
}
