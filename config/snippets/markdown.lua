local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt

return {
  -- Link
  ls.s(
    {
      trig = "link",
      name = "markdown_link",
      dscr = "Create markdown link [txt](url).\nSelect link, press C-s, type link.",
    },
    fmt("[{}]({})\n{}", {
      ls.i(1),
      ls.f(function(_, snip)
        return snip.env.TM_SELECTED_TEXT[1] or {}
      end, {}),
      ls.i(0),
    })
  ),

  -- Front matter
  ls.s(
    {
      trig = "--",
      name = "front_matter",
      dscr = "Insert front matter for metadata.",
    },
    fmt("---\n{}\n---\n{}", {
      ls.i(0),
      ls.i(1),
    })
  ),

  -- TODO
  ls.s(
    {
      trig = "-",
      name = "todo",
      dscr = "Insert a TODO item.",
    },
    fmt("- [ ] {}\n{}", {
      ls.i(1, "todo"),
      ls.i(0),
    })
  ),

  -- Image
  ls.s(
    {
      trig = "![",
      name = "image",
      dscr = "Insert an image.",
    },
    fmt("![{}]({})\n{}", {
      ls.i(1, "alttext"),
      ls.i(2, "/images/image.jpg"),
      ls.i(0),
    })
  ),

  -- Code block
  ls.s(
    {
      trig = "```l",
      name = "codeblock",
      dscr = "Create a code block.",
    },
    fmt("```{}\n{}\n```\n{}", {
      ls.i(1, "language"),
      ls.i(2, "code"),
      ls.i(0),
    })
  ),

  -- Table
  ls.s(
    {
      trig = "tb",
      name = "table",
      dscr = "Insert a table.",
    },
    fmt("|  {}  |  {}  |  {}  |\n| ------------- | ------------- | ------------- |\n|  {}  |  {}  |  {}  |\n|  {}  |  {}  |  {}  |\n{}", {
      ls.i(1, "factors"),
      ls.i(2, "a"),
      ls.i(3, "b"),
      ls.i(4, "f1"),
      ls.i(5, "Y"),
      ls.i(6, "N"),
      ls.i(7, "f2"),
      ls.i(8, "Y"),
      ls.i(9, "N"),
      ls.i(0),
    })
  ),

  -- Definition list
  ls.s(
    {
      trig = ":",
      name = "definition_list",
      dscr = "Create a definition list.",
    },
    fmt("{}\n: {}\n{}", {
      ls.i(1),
      ls.i(0),
      ls.i(0),
    })
  ),

  -- Alternate definition list
  ls.s(
    {
      trig = "::",
      name = "alternate_definition_list",
      dscr = "Create an alternate definition list.",
    },
    fmt("{}\n  - {}\n{}", {
      ls.i(1),
      ls.i(0),
      ls.i(0),
    })
  ),
}

