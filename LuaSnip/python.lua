local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node

ls.add_snippets('python', {
	s('bb', c(1, {
		t('1st'),
		t('2nd'),
		t('3rd'),
	}))
})

ls.add_snippets('python', {
	s('nc', t('# %%'))
})
