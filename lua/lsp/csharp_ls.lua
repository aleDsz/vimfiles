---@type vim.lsp.Config
return {
	cmd = { "csharp-ls" },
	filetypes = { "csharp", "dotnet" },
	root_markers = { "*.sln", "*.csproj", ".git" },
}
