-- Elixir
require("lspconfig").elixirls.setup({
	cmd = { "/home/aledsz/.elixir-ls/language_server.sh" },
	settings = {
		elixirLS = {
			dialyzerEnabled = true,
			mixEnv = "test",
			mixTarget = "test",
			suggestSpecs = true,
		},
	},
})
