---@type vim.lsp.Config
return {
	cmd = { "elixir-ls" },
	filetypes = { "elixir", "eelixir", "heex" },
	root_markers = { "mix.exs", ".git" },
	settings = {
		elixirLS = {
			mixEnv = "test",
			suggestSpecs = true,
			fetchDeps = true,
			dialyzerEnabled = true,
			enableTestLenses = true,
		},
	},
}
