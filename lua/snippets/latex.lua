-- File containing snippets for latex files

local ls = require 'luasnip'
-- some shorthands...
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node
local fmta = require('luasnip.extras.fmt').fmta

local date = function()
  return { os.date '%Y-%m-%d' }
end

ls.add_snippets(nil, {
  all = {
    snip({
      trig = 'date',
      namr = 'Date',
      dscr = 'Date in the form of YYYY-MM-DD',
    }, {
      func(date, {}),
    }),
  },
})

-- local figure = snip({
--   trig = 'figure',
--   name = 'figure',
--   dscr = 'LaTeX figure environment',
-- }, {
--   text { '\\begin{figure}', '\\centering', '' },
--   text '\\includegraphics[width=\\textwidth]{',
--   insert(1, 'image file'),
--   text { '}', '' },
--   text '\\caption{',
--   insert(2, 'caption'),
--   text { '}', ''},
--   text {
--   text '\\end{figure}',
-- })
local figure = snip(
  'figure',
  fmta(
    [[
    \begin{figure}
      \centering 
      \includegraphics[width=0.8\textwidth]{<>}
      \caption{<>}
      \label{<>}
    \end{figure}
    ]],
    {
      insert(1, 'image file'),
      insert(2, 'caption'),
      insert(3, 'label'),
    }
  )
)

ls.add_snippets(nil, {
  all = { figure },
})
