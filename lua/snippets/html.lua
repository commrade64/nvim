local helpers = require("misc.helpers.luasnip")

return {
  -- HEADER
  s({ trig = "h([123456])", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmt(
      [[
          <h{} class="{}">{}</h{}>
        ]],
      {
        f(function(_, snip) return snip.captures[1] end),
        i(2),
        d(1, helpers.get_visual),
        f(function(_, snip) return snip.captures[1] end),
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- GENERTIC INLINE ELEMENT
  s({ trig = "([^%a])tt", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmt(
      [[
          {}<{} class="{}">{}</{}>
        ]],
      {
        f(function(_, snip) return snip.captures[1] end),
        i(1),
        i(2),
        d(3, helpers.get_visual),
        rep(1)
      }
    )
  ),
  -- GENERTIC TAG
  s({ trig = "TT", snippetType = "autosnippet" },
    fmt(
      [[
          <{} class="{}">
            {}
          </{}>
        ]],
      {
        i(1),
        i(2),
        d(3, helpers.get_visual),
        rep(1)
      }
    )
  ),
  -- SPAN ELEMENT
  s({ trig = "([^%l])span", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmt(
      [[
          {}<span class="{}">{}</span>
        ]],
      {
        f(function(_, snip) return snip.captures[1] end),
        i(2),
        d(1, helpers.get_visual),
      }
    )
  ),
  -- FORM TAG
  s({ trig = "form", snippetType = "autosnippet" },
    fmt(
      [[
          <form{}>
            {}
          </form>
        ]],
      {
        i(1),
        d(2, helpers.get_visual)
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- PRE TAG
  s({ trig = "pre", snippetType = "autosnippet" },
    fmt(
      [[
          <pre>
            {{{}}}
          </pre>
        ]],
      {
        d(1, helpers.get_visual)
      }
    )
  ),
  -- PARAGRAPH
  s({ trig = "par", snippetType = "autosnippet" },
    fmt(
      [[
          <p class="{}">{}</p>
        ]],
      {
        i(2),
        d(1, helpers.get_visual),
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- IMG
  s({ trig = "img", snippetType = "autosnippet" },
    fmt(
      [[
          <img src="{}" alt="{}" class="{}"/>
        ]],
      {
        d(1, helpers.get_visual),
        i(2),
        i(3)
      }
    )
  ),
  -- CLASS
  s({ trig = ";c", snippetType = "autosnippet" },
    fmt(
      [[
          class="{}"
        ]],
      {
        d(1, helpers.get_visual),
      }
    )
  ),
  -- ORDERED LIST
  s({ trig = "ol", snippetType = "autosnippet" },
    fmt(
      [[
          <ol>
            <li{}>{}</li>{}
          </ol>
        ]],
      {
        i(2),
        i(1),
        i(0)
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- UNORDERED LIST
  s({ trig = "ul", snippetType = "autosnippet" },
    fmt(
      [[
          <ul>
            <li{}>{}</li>{}
          </ul>
        ]],
      {
        i(2),
        i(1),
        i(0)
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- LIST ITEM
  s({ trig = "ii", snippetType = "autosnippet" },
    fmt(
      [[
            <li{}>{}</li>
        ]],
      {
        i(2),
        d(1, helpers.get_visual)
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- DOCUMENT TEMPLATE
  s({ trig = "doc" },
    fmt(
      [[
        <!doctype HTML>
        <html lang="en">
          <head>
            <meta charset="UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>{}</title>
          </head>
          <body>
            {}
          </body>
        </html>
        ]],
      {
        i(1, "Title"),
        i(0)
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- SCRIPT
  s({ trig = "script", snippetType = "autosnippet" },
    fmt(
      [[
          <script{}>{}{}</script>
        ]],
      {
        i(1),
        d(2, helpers.get_visual),
        i(0)
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- DIV
  s({ trig = "div", snippetType = "autosnippet" },
    fmt(
      [[
          <div class="{}">
            {}{}
          </div>
        ]],
      {
        i(2),
        d(1, helpers.get_visual),
        i(0)
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- DIV with ID for practicing Vue
  s({ trig = "dii", snippetType = "autosnippet" },
    fmt(
      [[
          <div id="{}">
            {}
          </div>
        ]],
      {
        i(1),
        i(0)
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- INPUT ELEMENT
  s({ trig = "input", snippetType = "autosnippet" },
    fmt(
      [[
          <input type="{}" id="{}"/>
        ]],
      {
        i(1),
        i(2)
      }
    )
  ),
  -- LABEL
  s({ trig = "label", snippetType = "autosnippet" },
    fmt(
      [[
          <label for="{}">
            {}
          </label>
        ]],
      {
        i(1),
        d(2, helpers.get_visual)
      }
    )
  ),
  -- BUTTON
  s({ trig = "button", snippetType = "autosnippet" },
    fmt(
      [[
          <button type="{}" {}>
            {}
          </button>
        ]],
      {
        i(1),
        i(2),
        d(3, helpers.get_visual),
      }
    ),
    { condition = helpers.line_begin }
  ),
  -- STRONG ELEMENT
  s({ trig = "strong", snippetType = "autosnippet" },
    fmt(
      [[
          <strong>{}</strong>
        ]],
      {
        d(1, helpers.get_visual),
      }
    )
  ),
}
