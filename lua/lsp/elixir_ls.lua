---@type vim.lsp.Config
return {
  cmd = { vim.fn.expand "~/.lsp/elixir-ls/language_server.sh" },
  filetypes = { "elixir", "eelixir", "heex" },
  root_markers = { "mix.exs", ".git" },
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
