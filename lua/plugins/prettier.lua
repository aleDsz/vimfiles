local prettier = require("prettier")

require("prettier").setup({
	bin = "prettier",
	filetypes = {
		"css",
		"eex",
		"elixir",
		"erlang",
		"graphql",
		"heex",
		"html",
		"javascript",
		"javascriptreact",
		"json",
		"less",
		"markdown",
		"scss",
		"typescript",
		"typescriptreact",
		"yaml",
	},
})
