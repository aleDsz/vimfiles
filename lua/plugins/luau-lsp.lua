require("luau-lsp").setup({
	sourcemap = {
		enable = true,
		autogenerate = true,
	},
	server = {
		types = {
			roblox = true,
			wr = true,
		},
	},
})
