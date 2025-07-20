-- Elixir
require("lspconfig").elixirls.setup {
  cmd = { "/home/aledsz/.elixir-ls/language_server.sh" },
  settings = {
    elixirLS = {
      mixEnv = "test",
      mixTarget = "host",
      suggestSpecs = true,
      fetchDeps = true,
      dialyzerEnabled = true,
      enableTestLenses = true,
    },
  },
}
