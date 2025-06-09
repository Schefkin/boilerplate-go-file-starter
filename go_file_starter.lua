local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

-- boilerplate snippet that creates a hello world program in go
ls.add_snippets("go", {
	s(
		"bp",
		fmt(
			[[
      package {}

      import (
        "fmt"
      )
      
      func {}() {{
        {}
        fmt.Println("Hello, World!")
      }}
      ]],
			{
				i(1, "main"),
				i(2, "main"),
				i(3),
			}
		)
	),
})
