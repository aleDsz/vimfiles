---@type vim.lsp.Config
return {
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
