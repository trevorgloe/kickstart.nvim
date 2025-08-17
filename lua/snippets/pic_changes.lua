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

local example_open = snip('exp_o', { text [[{{< plain_thm_env "Example" >}} ]] })
local example_close = snip('exp_c', { text [[{{< /plain_thm_env >}} ]] })
local def_open = snip('def_o', { text [[{{< plain_thm_env "Definition" >}} ]] })
local def_close = snip('def_c', { text [[{{< /plain_thm_env >}} ]] })
local it_env_open = snip('env_io', { text [[{{< italic_thm_env ]], insert(1, 'env_name'), text [[ >}} ]] })
local it_env_close = snip('env_ic', { text [[{{< /italic_thm_env >}} ]] })

ls.add_snippets(nil, {
  all = { example_open, example_close, def_open, def_close, it_env_open, it_env_close },
})
