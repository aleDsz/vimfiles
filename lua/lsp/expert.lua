---@type vim.lsp.Config
return {
	cmd = { "expert", "--stdio" },
	filetypes = { "elixir", "eelixir", "heex", "leex", "erlang" },
	root_markers = { "mix.exs", ".git" },
	settings = {
		expert = {
			workspaceSymbols = {
				minQueryLength = 2,
			},
			logLevel = "debug",
			fileLogLevel = "debug",
			autoFetchDependencies = true,
			compileOnType = true,
		},
	},
}
