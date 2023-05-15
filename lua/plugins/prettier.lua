local prettier = require("prettier")

require("prettier").setup {
	bin = "prettier",
	filetypes = {
		"css",
		"elixir",
		"graphql",
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
}
